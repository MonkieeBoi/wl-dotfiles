# This is here so configs done via the GUI are still loaded.
# Remove it to not load settings done via the GUI.
config.load_autoconfig(True)

# Value to use for `prefers-color-scheme:` for websites. The "light"
# value is only available with QtWebEngine 5.15.2+. On older versions,
# it is the same as "auto". The "auto" value is broken on QtWebEngine
# 5.15.2 due to a Qt bug. There, it will fall back to "light"
# unconditionally.
# Type: String
# Valid values:
#   - auto: Use the system-wide color scheme setting.
#   - light: Force a light theme.
#   - dark: Force a dark theme.
c.colors.webpage.preferred_color_scheme = 'dark'

# Shrink the completion to be smaller than the configured size if there
# are no scrollbars.
# Type: Bool
c.completion.shrink = True

# Automatically start playing `<video>` elements.
# Type: Bool
# c.content.autoplay = True

# List of URLs to ABP-style adblocking rulesets.  Only used when Brave's
# ABP-style adblocker is used (see `content.blocking.method`).  You can
# find an overview of available lists here:
# https://adblockplus.org/en/subscriptions - note that the special
# `subscribe.adblockplus.org` links aren't handled by qutebrowser, you
# will instead need to find the link to the raw `.txt` file (e.g. by
# extracting it from the `location` parameter of the subscribe URL and
# URL-decoding it).
# Type: List of Url
c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
        "https://easylist-downloads.adblockplus.org/antiadblockfilters.txt",
        "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
        "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2023.txt",
        "https://raw.githubusercontent.com/bogachenko/fuckfuckadblock/master/fuckfuckadblock.txt"
]

disable_content_block_sites = [
    "https://monkeytype.com/*",
    "https://www.twitch.tv/*",
    "https://neetcode.io/*",
    "https://playscrabble.com/*"
]

for site in disable_content_block_sites:
    config.set('content.blocking.enabled', False, site)

# Which method of blocking ads should be used.  Support for Adblock Plus
# (ABP) syntax blocklists using Brave's Rust library requires the
# `adblock` Python package to be installed, which is an optional
# dependency of qutebrowser. It is required when either `adblock` or
# `both` are selected.
# Type: String
# Valid values:
#   - auto: Use Brave's ABP-style adblocker if available, host blocking otherwise
#   - adblock: Use Brave's ABP-style adblocker
#   - hosts: Use hosts blocking
#   - both: Use both hosts blocking and Brave's ABP-style adblocker
c.content.blocking.method = 'both'

# Limit fullscreen to the browser window (does not expand to fill the
# screen).
# Type: Bool
c.content.fullscreen.window = True

## Display PDF files via PDF.js in the browser without showing a download
## prompt. Note that the files can still be downloaded by clicking the
## download button in the pdf.js viewer. With this set to `false`, the
## `:prompt-open-download --pdfjs` command (bound to `<Ctrl-p>` by
## default) can be used in the download prompt.
## Type: Bool
c.content.pdfjs = False

# Where to show the downloaded files.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.downloads.position = 'bottom'

# Duration (in milliseconds) to wait before removing finished downloads.
# If set to -1, downloads are never removed.
# Type: Int
c.downloads.remove_finished = 10000

# Editor (and arguments) to use for the `edit-*` commands. The following
# placeholders are defined:  * `{file}`: Filename of the file to be
# edited. * `{line}`: Line in which the caret is found in the text. *
# `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['foot', 'nvim', '{file}']

# Command (and arguments) to use for selecting a single folder in forms.
# The command should write the selected folder path to the specified
# file or stdout. The following placeholders are defined: * `{}`:
# Filename of the file to be written to. If not contained in any
# argument, the   standard output of the command is read instead.
# Type: ShellCommand
c.fileselect.folder.command = ['foot', 'nnn', '-p', '{}']

# Handler for selecting file(s) in forms. If `external`, then the
# commands specified by `fileselect.single_file.command` and
# `fileselect.multiple_files.command` are used to select one or multiple
# files respectively.
# Type: String
# Valid values:
#   - default: Use the default file selector.
#   - external: Use an external command.
c.fileselect.handler = 'external'

# Command (and arguments) to use for selecting multiple files in forms.
# The command should write the selected file paths to the specified file
# or to stdout, separated by newlines. The following placeholders are
# defined: * `{}`: Filename of the file to be written to. If not
# contained in any argument, the   standard output of the command is
# read instead.
# Type: ShellCommand
c.fileselect.multiple_files.command = ['foot', 'nnn', '-p', '{}']

# Command (and arguments) to use for selecting a single file in forms.
# The command should write the selected file path to the specified file
# or stdout. The following placeholders are defined: * `{}`: Filename of
# the file to be written to. If not contained in any argument, the
# standard output of the command is read instead.
# Type: ShellCommand
c.fileselect.single_file.command = ['foot', 'nnn', '-p', '{}']

# When a hint can be automatically followed without pressing Enter.
# Type: String
# Valid values:
#   - always: Auto-follow whenever there is only a single hint on a page.
#   - unique-match: Auto-follow whenever there is a unique non-empty match in either the hint string (word mode) or filter (number mode).
#   - full-match: Follow the hint when the user typed the whole hint (letter, word or number mode) or the element's text (only in number mode).
#   - never: The user will always need to press Enter to follow a hint.
c.hints.auto_follow = 'unique-match'

# Characters used for hint strings.
# Type: UniqueCharString
# c.hints.chars = 'asdfghjkl'

# Mode to use for hints.
# Type: String
# Valid values:
#   - number: Use numeric hints. (In this mode you can also type letters from the hinted element to filter and reduce the number of elements that are hinted.)
#   - letter: Use the characters in the `hints.chars` setting.
#   - word: Use hints words based on the html elements and the extra words.
c.hints.mode = 'letter'

# Padding (in pixels) for hints.
# Type: Padding
c.hints.padding = {'top': 0, 'bottom': 0, 'left': 0, 'right': 0}

# Rounding radius (in pixels) for the edges of hints.
# Type: Int
c.hints.radius = 2

# Which unbound keys to forward to the webview in normal mode.
# Type: String
# Valid values:
#   - all: Forward all unbound keys.
#   - auto: Forward unbound non-alphanumeric keys.
#   - none: Don't forward any keys.
c.input.forward_unbound_keys = 'all'

# Interpret number prefixes as counts for bindings. This enables for vi-
# like bindings that can be prefixed with a number to indicate a count.
# Disabling it allows for emacs-like bindings where number keys are
# passed through (according to `input.forward_unbound_keys`) instead.
# Type: Bool
c.input.match_counts = False

# When/how to show the scrollbar.
# Type: String
# Valid values:
#   - always: Always show the scrollbar.
#   - never: Never show the scrollbar.
#   - when-searching: Show the scrollbar when searching for text in the webpage. With the QtWebKit backend, this is equal to `never`.
#   - overlay: Show an overlay scrollbar. On macOS, this is unavailable and equal to `when-searching`; with the QtWebKit backend, this is equal to `never`. Enabling/disabling overlay scrollbars requires a restart.
c.scrolling.bar = 'when-searching'

# When to find text on a page case-insensitively.
# Type: IgnoreCase
# Valid values:
#   - always: Search case-insensitively.
#   - never: Search case-sensitively.
#   - smart: Search case-sensitively if there are capital characters.
c.search.ignore_case = 'smart'

# Find text on a page incrementally, renewing the search for each typed
# character.
# Type: Bool
c.search.incremental = False

# Position of the status bar.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.statusbar.position = 'bottom'

# When to show the statusbar.
# Type: String
# Valid values:
#   - always: Always show the statusbar.
#   - never: Always hide the statusbar.
#   - in-mode: Show the statusbar when in modes other than normal mode.
c.statusbar.show = 'in-mode'

# How to behave when the last tab is closed. If the
# `tabs.tabs_are_windows` setting is set, this is ignored and the
# behavior is always identical to the `close` value.
# Type: String
# Valid values:
#   - ignore: Don't do anything.
#   - blank: Load a blank page.
#   - startpage: Load the start page.
#   - default-page: Load the default page.
#   - close: Close the window.
c.tabs.last_close = 'startpage'

# Maximum width (in pixels) of tabs (-1 for no maximum). This setting
# only applies when tabs are horizontal. This setting does not apply to
# pinned tabs, unless `tabs.pinned.shrink` is False. This setting may
# not apply properly if max_width is smaller than the minimum size of
# tab contents, or smaller than tabs.min_width.
# Type: Int
c.tabs.max_width = 200

# When switching tabs, what input mode is applied.
# Type: String
# Valid values:
#   - persist: Retain the current mode.
#   - restore: Restore previously saved mode.
#   - normal: Always revert to normal mode.
c.tabs.mode_on_change = 'restore'

# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'multiple'

# Duration (in milliseconds) to show the tab bar before hiding it when
# tabs.show is set to 'switching'.
# Type: Int
c.tabs.show_switching_delay = 800

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = '~/.config/qutebrowser/startpage/index.html'

# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`). * `{0}` means the same as `{}`, but can be used
# multiple times.  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
c.url.searchengines = {
        'DEFAULT': 'https://google.com/search?hl=en&q={}',
        "au":      "https://aur.archlinux.org/packages/?K={}",
        "aw":      "https://wiki.archlinux.org/?search={}",
        "dd":      "https://duckduckgo.com?q={}",
        "gh":      "https://github.com/search?q={}",
        "gm":      "https://mail.google.com/mail/u/0/#search/{}",
        "re":      "https://reddit.com/r/all/search?q={}",
        "yt":      "https://www.youtube.com/results?search_query={}"
}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = ['~/.config/qutebrowser/startpage/index.html']

config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {hint-url}')
config.bind(',s', 'config-cycle statusbar.show in-mode never')
config.bind(',t', 'config-cycle tabs.show always multiple switching')
config.bind(',r', 'hint --rapid')
config.bind(',c', 'spawn --userscript rebuild-qutebrowser-grease-styles.py', mode='normal')
config.bind(',p', 'spawn --userscript localhost')
config.bind(',j', 'spawn --userscript jp-search')
config.bind(',l', 'spawn --userscript leetcode-daily')
config.bind(',b', 'config-cycle content.blocking.enabled true false')

# Bindings for passthrough mode
config.bind('<Alt-Escape>', 'mode-enter passthrough')
config.bind('<Alt-Escape>', 'mode-leave',  mode='passthrough')
config.unbind('<Shift-Escape>', 'passthrough')

# Fixes some issues with tetr.io
config.bind('A', 'fake-key A', mode='passthrough')
config.bind('S', 'fake-key S', mode='passthrough')
config.bind('D', 'fake-key D', mode='passthrough')

config.source('nord-qutebrowser.py')

c.content.local_content_can_access_remote_urls = True
