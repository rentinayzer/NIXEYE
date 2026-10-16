import QtQuick
import Quickshell
import Quickshell.Services.UPower
import QtQuick.Layouts

RowLayout {
  id: bt
  spacing: 4
  
  property var battery: UPower.displayDevice
  property bool isCharging: battery.state === 1
  readonly property int lv: Math.round(battery.percentage * 100)

  readonly property string icon: {
    if (isCharging) return String.fromCodePoint(0xF0084)
    if (lv >= 100) return String.fromCodePoint(0xF0079)
    if (lv < 10) return String.fromCodePoint(0xF0083)

    return String.fromCodePoint(0xF007A + Math.floor(lv / 10) - 1)
  }

  Text {
    text: bt.icon
    color: bt.isCharging ? root.colCF
    			 : bt.lv <= 15 ? root.colBL
			 : bt.lv <= 30 ? root.colBM
			 : root.colCF
    
    font.pixelSize: root.fontSize		       
    font.family: root.fontFamily
  }

  Text {
    text: bt.lv + "%"
    color: root.colBT
    font.family: root.fontFamily
    font.pixelSize: root.fontSize
  }
}
