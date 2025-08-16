pragma Singleton
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    function increaseBrightness(): void {
        const focusedName = Hyprland.focusedMonitor.name;
        const monitor = monitors.find(m => focusedName === m.modelData.name);
        if (monitor)
            monitor.setBrightness(monitor.brightness + 0.1);
    }

    function decreaseBrightness(): void {
        const focusedName = Hyprland.focusedMonitor.name;
        const monitor = monitors.find(m => focusedName === m.modelData.name);
        if (monitor)
            monitor.setBrightness(monitor.brightness - 0.1);
    }
}
