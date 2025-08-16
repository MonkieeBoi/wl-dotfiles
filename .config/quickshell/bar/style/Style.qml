pragma Singleton

import Quickshell
import QtQuick

Singleton {
    property QtObject colours: QtObject {
        readonly property color text: "white"
        readonly property color mainBg: "#2e3440"
        readonly property color altBg: "#4c566a"
    }

    property QtObject font: QtObject {
        readonly property string family: "JetBrains Mono NF"
    }

    property int padding: 6
}
