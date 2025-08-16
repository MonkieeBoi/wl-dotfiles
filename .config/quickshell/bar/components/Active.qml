import qs.style
import qs.widgets
import Quickshell.Wayland
import QtQuick

Rectangle {
    color: Style.colours.mainBg
    implicitHeight: parent.height

    StyledText {
        id: content
        text: ToplevelManager.activeToplevel?.title || ""
        elide: Text.ElideRight
        width: parent.width
    }
}
