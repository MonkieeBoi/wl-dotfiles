import qs.services
import qs.widgets
import qs.style
import qs.components
import QtQuick
import QtQuick.Layouts
import Quickshell

RowLayout {
    spacing: 0
    implicitHeight: parent.height

    Rectangle {
        color: Style.colours.altBg
        implicitWidth: content.width + Style.padding
        implicitHeight: parent.height

        StyledText {
            id: content
            text: "󰣇"
        }
    }

    End {
        back: true
        invert: true
    }

    Active {
        Layout.preferredWidth: 400
    }
}
