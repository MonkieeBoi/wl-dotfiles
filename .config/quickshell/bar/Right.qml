import qs.services
import qs.widgets
import qs.style
import qs.components
import Quickshell.Services.UPower
import QtQuick
import QtQuick.Layouts
import Quickshell

RowLayout {
    spacing: 0
    implicitHeight: parent.height

    Ref {
        service: SystemUsage
    }

    function getBatteryIcon(): string {
        return ["󰁺", "󰁺", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂",
                "󰁹"][Math.floor(UPower.displayDevice.percentage * 10)]
    }

    End {}
    Rectangle {
        color: Style.colours.altBg
        implicitHeight: parent.height
        implicitWidth: mem.width + Style.padding
        StyledText {
            id: mem
            text: ` ${Math.floor(SystemUsage.memPerc * 100)}%`
        }
    }
    Spacer {}
    Rectangle {
        color: Style.colours.altBg
        implicitHeight: parent.height
        implicitWidth: cpu.width + Style.padding
        StyledText {
            id: cpu
            text: `󰍛 ${Math.floor(SystemUsage.cpuPerc * 100)}%`
        }
    }
    Spacer {}
    Rectangle {
        color: Style.colours.altBg
        implicitHeight: parent.height
        implicitWidth: bat.width + Style.padding

        StyledText {
            id: bat
            text: `${getBatteryIcon()} ${Math.floor(UPower.displayDevice.percentage * 100)}%`
        }
    }
    Spacer {}
    Rectangle {
        color: Style.colours.altBg
        implicitHeight: parent.height
        implicitWidth: icons.width + Style.padding
        RowLayout {
            id: icons
            implicitHeight: parent.height
            VolumeIcon {
                anchors.centerIn: null
            }
            NetworkIcon {
                anchors.centerIn: null
            }
            anchors.centerIn: parent
        }
    }
}

