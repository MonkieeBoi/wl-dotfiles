import qs.widgets
import qs.style
import qs.components
import QtQuick
import Quickshell

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 16

            color: Style.colours.mainBg

            Left {
                anchors.left: parent.left
            }

            Center {
                anchors.centerIn: parent
            }

            Right {
                anchors.right: parent.right
            }
        }
    }
}
