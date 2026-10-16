import Quickshell
import QtQuick

  Text {
    color: root.colBT
    font.family: root.fontFamily
    font.pixelSize: root.fontSize
    text: Qt.formatDateTime(clock.date, "hh:mm")
  }

