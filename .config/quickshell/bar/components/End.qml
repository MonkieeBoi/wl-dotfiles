import qs.style
import qs.widgets
import QtQuick

Rectangle {
    implicitWidth: content.width
    implicitHeight: parent.height
    property bool back: false
    property bool invert: false
    color: invert ? Style.colours.mainBg : Style.colours.altBg

    StyledText {
        id: content
        text: back ? "" : ""
        color: invert ? Style.colours.altBg : Style.colours.mainBg
        anchors.centerIn: null
    }
}
