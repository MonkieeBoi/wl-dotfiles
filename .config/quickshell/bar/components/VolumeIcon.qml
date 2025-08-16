pragma ComponentBehavior: Bound

import qs.services
import qs.style
import qs.widgets
import QtQuick

StyledText {
    text: (Audio.muted ? "󰝟" :
    Audio.volume >= 0.6 ? "" :
    Audio.volume >= 0.4 ? "󰕾" :
    Audio.volume >= 0.2 ? "" : "")
}
