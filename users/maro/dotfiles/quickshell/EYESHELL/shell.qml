import Quickshell
import QtQuick
import QtQuick.Layouts
import "./Modules"

PanelWindow {
  
  // Colors

  id: root
  property color colBg: "#1a1b26"
  property color colFg: "#323354"
  property color colMuted: "#444b6a" // No idea ngl
  property color colUFws: "#7aa2f7" //Blue rn
  property color colFws: "#0db9d7" // Cyan rn
  property color colBT: "white"
  property string fontFamily: "JetBrainsMono Nerd Font"
  property int fontSize: 20

  // Battery colors

  property color colCF: "#7ad9a8"
  property color colBL: "#ff5048"
  property color colBM: "#ffa478"

  // Volume col
  
  property color colVOL: "#f5cd5b"
  
  // Network cols
  
  property color colNwAc: "#e89aa8"
  property color colNwNAc: "#5a4d3e"

  // Bg modules that need to be running

  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }

  // The Bar

  anchors {
    left: true
    right: true
    top: true
  }

  margins {
    left: 10
    right: 10
    top: 10
  }

  implicitHeight: 48
  color: "transparent"

  Rectangle {
    radius: 5
    width: parent.width
    height: parent.height
    z: -2
    color: root.colBg
  }

  // Elements

  // Left

  RowLayout {
    anchors.fill: parent
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.leftMargin: 12
    spacing: 8
    
    Workspaces {}

    Item { Layout.fillWidth: True }
  }

  //right

  RowLayout {
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    anchors.rightMargin: 12
    spacing: 20

    Volume {}

    Network {}

    Battery {}

  }

  // Middle

  RowLayout {
    anchors.centerIn: parent
    anchors.margins: 8


    Clock {}
    
  }
}
