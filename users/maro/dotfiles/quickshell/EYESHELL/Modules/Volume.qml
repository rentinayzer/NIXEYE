import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire

RowLayout {
  id: vol
  spacing: 4

  PwObjectTracker {
    objects: Pipewire.defaultAudioSink
  }

  property var sink: Pipewire.defaultAudioSink

  readonly property bool isReady: sink && sink.ready
  property bool isMuted: sink.audio.muted && isReady
  readonly property int lv: isReady ? Math.round(sink.audio.volume * 100) : 0
  
  readonly property string icon: {
    if (!isReady) return String.fromCodePoint(0xF026)
    if (isMuted) return String.fromCodePoint(0xEEE8)
    if (lv >= 70) return String.fromCodePoint(0xF028)
    if (lv <= 0) return String.fromCodePoint(0xF026)
    if (lv <= 35) return String.fromCodePoint(0xF027)
    
    return String.fromCodePoint(0xEFCF)
  } 

  Text {
    text: vol.icon
    color: root.colVOL
    font.pixelSize: root.fontSize
    font.family: root.fontFamily
  }

  Text {
    text: isReady ? vol.lv + "%" : "N/A"
    color: root.colBT
    font.pixelSize: root.fontSize
    font.family: root.fontFamily
  }

}
