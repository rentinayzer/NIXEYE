import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

RowLayout {
  spacing: 6
  Repeater {
    model: Hyprland.workspaces
 
    Text {
      id: wsDot
      property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
      property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
      text: String.fromCodePoint(0xF0765)
      font.family: root.fontFamily
      font.pixelSize: root.fontSize
      color: isActive ? root.colFws : (ws ? root.colUFws : root.colMuted)
     }
  }
}
