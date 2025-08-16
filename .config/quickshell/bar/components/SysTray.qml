import qs.style
import qs.widgets
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import Quickshell.Services.SystemTray

Item {
    id: root

    height: parent.height
    implicitWidth: rowLayout.width

    RowLayout {
        id: rowLayout

        implicitHeight: parent.height
        spacing: 5

        Repeater {
            model: SystemTray.items

            IconImage {
                required property SystemTrayItem modelData;
                id: icon
                implicitSize: parent.height

                source: modelData.icon
            }
        }
    }
}
