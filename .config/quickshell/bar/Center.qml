import qs.services
import qs.style
import qs.widgets
import qs.components
import QtQuick
import QtQuick.Layouts
import Quickshell

RowLayout {
    spacing: 0
    implicitHeight: parent.height

    End {
        back: true
    }
    Rectangle {
        color: Style.colours.altBg
        implicitWidth: day.width + Style.padding
        implicitHeight: parent.height

        StyledText {
            id: day
            text: Time.format("󰃶 dddd")
            font.family: Style.font.family
            color: Style.colours.text
            renderType: Text.NativeRendering
            anchors.centerIn: parent
        }
    }
    Spacer {
        back: true
    }
    Rectangle {
        color: Style.colours.altBg
        implicitWidth: time.width + Style.padding
        implicitHeight: parent.height

        StyledText {
            id: time
            text: Time.format("󰅐 hh:mm:ss AP")
            font.family: Style.font.family
            color: Style.colours.text
            renderType: Text.NativeRendering
            anchors.centerIn: parent
        }
    }
    Spacer {}
    Rectangle {
        color: Style.colours.altBg
        implicitWidth: date.width + Style.padding
        implicitHeight: parent.height

        StyledText {
            id: date
            text: Time.format(" dd.MM.yy")
            font.family: Style.font.family
            color: Style.colours.text
            renderType: Text.NativeRendering
            anchors.centerIn: parent
        }
    }
    End {
        invert: true
    }
}

