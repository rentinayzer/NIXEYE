import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Networking

RowLayout {
  id: nw
  spacing: 4

  property var wd: Networking.devices.values.find(d => d.type === DeviceType.Wifi)
  property var active: wd ? wd.networks.values.find(n => n.connected) : null

  readonly property real signal: active ? active.signalStrength : 0

  readonly property string icon: {
    if (!Networking.wifiEnabled) return String.fromCodePoint(0xF05AA)
    if (!active) return String.fromCodePoint(0xF092D)

    let tier = signal >= 0.75 ? 4
             : signal >= 0.50 ? 3
	     : signal >= 0.25 ? 2
	     : 1
    return String.fromCodePoint(0xF091F + (tier - 1) * 3)
  }

  Text {
    text: nw.icon
    color: Networking.wifiEnabled ? root.colNwAc : root.colNwNAc
    font.family: root.fontFamily
    font.pixelSize: root.fontSize
  }

  Text {
    text: {
      if (!Networking.wifiEnabled) return "Off"
      if (!nw.active) return "N/C"
      return Math.round(nw.active.signalStrength * 101) + "%"
    }
    color: root.colBT
    font.family: root.fontFamily
    font.pixelSize: root.fontSize
  }
}
