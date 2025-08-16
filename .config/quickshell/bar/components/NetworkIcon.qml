pragma ComponentBehavior: Bound

import qs.services
import qs.style
import qs.widgets

StyledText {
    function getNetworkIcon(strength: int): string {
        if (strength >= 80)
            return "󰤨";
        if (strength >= 60)
            return "󰤥";
        if (strength >= 40)
            return "󰤢";
        if (strength >= 20)
            return "󰤟";
        return "󰤯";
    }
    text: Network.active ? getNetworkIcon(Network.active.strength ?? 0) : "󰤮"
}
