// ==UserScript==
// @name    Userstyle (youtube.com.css)
// @include    https://www.youtube.com/*
// ==/UserScript==
GM_addStyle(`:root {
    --bg: #2e3340;
    --bg-light: #3b4252;
    --bg-lighter: #434c5e;
    --bg-lightest: #4c556a;
    --bg-transparent: #2e3340f1;
    --accent: #5e81ac;
    --accent-light: #81a1c1;
    --accent-lighter: #88c0d0;
    --accent-lightest: #8fbcbb;
    --text-color: #d8dee9;
    --green: #a3be8c;
    --red: #bf616a;
}

html[dark] {
    --yt-spec-base-background: var(--bg);
}

body {
    background-color: var(--bg-light);
}

body::-webkit-scrollbar {
  display: none;
}

#guide-inner-content.ytd-app::-webkit-scrollbar {
  display: none;
}

yt-tooltip-renderer {
    color: var(--text-colour);
}

#player-container {
    background-color: var(--bg);
}

ytd-masthead[desktop-mic-background] #voice-search-button.ytd-masthead {
    background-color: var(--bg)
}

#container.ytd-masthead {
    background-color: var(--bg);
}

#like-button {
    color: var(--accent)
}

tp-yt-paper-button.ytd-subscribe-button-renderer[subscribed] {
    color: var(--text-color);
    background-color: var(--bg-light);
}

tp-yt-paper-button.ytd-subscribe-button-renderer {
    background-color: var(--accent);
    color: var(--text-color);
}

ytd-subscription-notification-toggle-button-renderer #button.ytd-subscription-notification-toggle-button-renderer {
    color: var(--text-color)
}

.sbsb_a, .sbdd_b {
    display: none;
}

#container.ytd-searchbox {
    background-color: var(--bg);
    color: var(--text-color);

}

#search-icon-legacy.ytd-searchbox {
    background-color: var(--bg)
}

#logo-icon > svg > g > g:nth-child(1) > path:nth-child(1) {
    fill: var(--accent);
}

#search-icon-legacy.ytd-searchbox {
    color: var(--text-color);
}

#search-icon-legacy.ytd-searchbox yt-icon.ytd-searchbox {
    color: var(--text-color) !important;
}

#notification-count.ytd-notification-topbar-button-renderer {
    background-color: var(--accent)
}

ytd-toggle-button-renderer.force-icon-button a.ytd-toggle-button-renderer {
    color: var(--accent)
}

ytd-toggle-button-renderer.style-text[is-icon-button] #text.ytd-toggle-button-renderer {
    color: var(--text-color)
}

#like-bar.ytd-sentiment-bar-renderer {
    background-color: var(--accent)
}

ytd-button-renderer #button.ytd-button-renderer {
    color: var(--text-color)
}

ytd-button-renderer.style-text[is-icon-button] #text.ytd-button-renderer, ytd-button-renderer.style-default[is-icon-button] #text.ytd-button-renderer, ytd-button-renderer.style-opacity[is-icon-button] #text.ytd-button-renderer {
    color: var(--text-color)
}

#button.ytd-menu-renderer yt-icon.ytd-menu-renderer {
    color: var(--text-color)
}

#chat-messages.yt-live-chat-renderer, #contents.yt-live-chat-renderer, #item-list.yt-live-chat-renderer {
    background-color: var(--bg)
}

#contentWrapper.tp-yt-iron-dropdown > * {
    background-color: var(--bg)
}

ytd-active-account-header-renderer {
    background-color: var(--bg)
}

yt-icon.ytd-compact-link-renderer, yt-icon.ytd-toggle-theme-compact-link-renderer {
    color: var(--text-color)
}

ytd-button-renderer.style-suggestive[is-paper-button] {
    background-color: var(--accent-light);
}

a.ytd-rich-metadata-renderer {
    background-color: var(--bg)
}

#chips.yt-chip-cloud-renderer {
    display: none;
}

yt-icon.ytd-badge-supported-renderer {
    color: var(--accent);
}

#owner-sub-count.ytd-video-owner-renderer, yt-formatted-string.ytd-video-primary-info-renderer, span.ytd-video-view-count-renderer {
    color: var(--text-color)
}

tp-yt-paper-listbox {
    background-color: var(--bg);
}

yt-icon.ytd-menu-service-item-renderer {
    color: var(--text-color)
}

#chips.ytd-feed-filter-chip-bar-renderer, ytd-feed-filter-chip-bar-renderer {
    display: none;
}

ytd-rich-grid-renderer {
    background-color: var(--bg-light)
}

#content.ytd-rich-section-renderer > .ytd-rich-section-renderer {
    display: none;
}

ytd-mini-guide-renderer.ytd-app {
    background-color: var(--bg)
}

ytd-watch-flexy[flexy][flexy-large-window_]:not([is-extra-wide-video_]), ytd-watch-flexy[flexy][flexy-large-window_][transcript-opened_][is-two-columns_]:not([is-extra-wide-video_]), ytd-watch-flexy[flexy][flexy-large-window_][playlist][is-two-columns_]:not([is-extra-wide-video_]), ytd-watch-flexy[flexy][flexy-large-window_][should-stamp-chat][is-two-columns_]:not([is-extra-wide-video_]) {
    background-color: var(--bg-light)
}

#show-hide-button.ytd-live-chat-frame > ytd-toggle-button-renderer.ytd-live-chat-frame{
    background-color: var(--bg);
    color: var(--text-color);
}

.fit.tp-yt-paper-dialog-scrollable, #top-bar.ytd-sponsorships-offer-renderer {
    background-color: var(--bg)
}

yt-button-renderer #button.yt-button-renderer {
    background-color: var(--accent-light)
}

yt-button-renderer #button.yt-button-renderer {
    color: var(--text-color)
}

a.yt-simple-endpoint.yt-formatted-string {
    color: var(--accent)
}

a.yt-simple-endpoint.yt-formatted-string:hover {
    color: var(--accent-light)
}

ytd-simple-menu-header-renderer {
    background-color: var(--bg)
}

#text.ytd-channel-name, #metadata-line.ytd-video-meta-block span.ytd-video-meta-block {
    color: var(--text-color)
}

.badge-style-type-simple.ytd-badge-supported-renderer {
    background: var(--bg-light) !Important;
}

.badge-style-type-simple.ytd-badge-supported-renderer {
    color: var(--text-color)
}

#country-code.ytd-topbar-logo-renderer {
    display: none;
}

ytd-author-comment-badge-renderer[creator] {
    background-color: var(--accent)
}

#like-button.ytd-comment-action-buttons-renderer {
    color: var(--accent)
}

#dislike-button.ytd-comment-action-buttons-renderer {
    color: var(--accent-light)
}

#label.ytd-pinned-comment-badge-renderer, yt-formatted-string[has-link-only_]:not([force-default-style]) a.yt-simple-endpoint.yt-formatted-string {
    color: var(--text-color)
}

#label-icon.yt-dropdown-menu, #icon-label.yt-dropdown-menu, #simplebox-placeholder.ytd-comment-simplebox-renderer, .more-button.ytd-video-secondary-info-renderer, .less-button.ytd-video-secondary-info-renderer {
    color: var(--text-color) !important;
}

#sections.ytd-guide-renderer > ytd-guide-section-renderer.ytd-guide-renderer:not(:first-child), #sections.ytd-guide-renderer > ytd-guide-subscriptions-section-renderer.ytd-guide-renderer {
    background-color: var(--bg);
    border-bottom: none;
}

#sections.ytd-guide-renderer > .ytd-guide-renderer:not(:last-child) {
    background-color: var(--bg);
    border-bottom: none;
}

ytd-app:not([background-color-update_]) tp-yt-app-drawer.ytd-app:not([persistent]).ytd-app #header.ytd-app {
    background-color: var(--bg);
    border-bottom: none;
}

.guide-icon.ytd-guide-entry-renderer {
    color: var(--text-color)
}

#guide-section-title.ytd-guide-section-renderer {
    color: var(--text-color)
}

#guide-links-primary.ytd-guide-renderer, #guide-links-secondary.ytd-guide-renderer, #footer.ytd-guide-renderer > #copyright {
    background-color: var(--bg)
}

#footer.ytd-guide-renderer > #copyright, #guide-links-primary.ytd-guide-renderer > a, #guide-links-secondary.ytd-guide-renderer > a, .metadata.ytd-notification-renderer {
    color: var(--text-color)
}

#vote-count-middle.ytd-comment-action-buttons-renderer {
    color: var(--text-color)
}

#channel-header.ytd-c4-tabbed-header-renderer {
    background-color: var(--bg-light)
}

#header.ytd-browse, #tabs-inner-container.ytd-c4-tabbed-header-renderer {
    background-color: var(--bg-light)
}

ytd-page-manager > .ytd-page-manager {
    background-color: var(--bg)
}

.tab-content.tp-yt-paper-tab, tp-yt-paper-tab.iron-selected.ytd-c4-tabbed-header-renderer {
    color: var(--text-color)
}

#metadata.ytd-channel-renderer, #description.ytd-channel-renderer, #subscriber-count.ytd-c4-tabbed-header-renderer {
    color: var(--text-color)
}


.progress-bar.ytd-backstage-poll-renderer {
    background-color: var(--bg-lightest);
}

yt-icon.checked.ytd-backstage-poll-renderer {
    color: var(--accent)
}

tp-yt-paper-item.ytd-backstage-poll-renderer[selected] .progress-bar.ytd-backstage-poll-renderer {
    background-color: var(--accent);
}

yt-icon.ytd-backstage-poll-renderer, #vote-info.ytd-backstage-poll-renderer {
    color: var(--text-color)
}

ytd-clarification-renderer[background-style="info"] {
    display: none;
}


yt-live-chat-header-renderer {
    background-color: var(--bg);
}

yt-live-chat-banner-manager.yt-live-chat-item-list-renderer {
     display: none;
}

#menu.yt-live-chat-text-message-renderer {
    background: var(--bg);
    color: var(--text-color);
}

yt-live-chat-viewer-engagement-message-renderer, #card.yt-live-chat-viewer-engagement-message-renderer {
    display: none;
}

#author-name.yt-live-chat-author-chip {
    color: var(--text-color)
}

yt-icon-button.yt-live-chat-item-list-renderer {
    background-color: var(--accent)
}

#items.yt-live-chat-ticker-renderer {
    background: var(--bg)
}

paper-button.yt-next-continuation {
    color: var(--accent-light)
}

#progress.ytd-thumbnail-overlay-resume-playback-renderer {
    background-color: var(--accent)
}

.super-title-icon.ytd-video-primary-info-renderer {
    color: var(--accent)
}

ytd-mini-guide-entry-renderer {
    background: var(--bg)
}


.guide-icon.ytd-mini-guide-entry-renderer, .title.ytd-mini-guide-entry-renderer {
    color: var(--text-color)
}

ytd-searchbox[has-focus] #container.ytd-searchbox {

    box-shadow: none;
}

yt-live-chat-text-message-renderer[author-is-owner] {
    background: var(--bg)
}

yt-live-chat-author-chip[is-highlighted] #author-name.owner.yt-live-chat-author-chip, #author-name.owner.yt-live-chat-author-chip {
    background-color: var(--accent);
    color: var(--text-color);
}

#header-section.ytd-donation-shelf-renderer, #donate-section.ytd-donation-shelf-renderer, #creator-messages-section.ytd-donation-shelf-renderer, #nonprofit-section.ytd-donation-shelf-renderer, #collapse-controls-section.ytd-donation-shelf-renderer {
    background-color: var(--bg)
}

#collapse-controls-section.ytd-donation-shelf-renderer, #creator-messages-section.ytd-donation-shelf-renderer, #nonprofit-section.ytd-donation-shelf-renderer, ytd-donation-shelf-renderer  {
    border: none !important;
}

#header-section.ytd-donation-shelf-renderer {
    border-bottom: none !Important;
}

#progress-bar-fill.ytd-donation-shelf-renderer {
    background-color: var(--accent-light)
}

#progress-bar.ytd-donation-shelf-renderer {
    background-color: var(--bg-light)
}

.creator-message.ytd-donation-shelf-renderer, #campaign-subtitle.ytd-donation-shelf-renderer, #nonprofit-description.ytd-donation-shelf-renderer, #nonprofit-subtitle.ytd-donation-shelf-renderer, #collapse-controls-section.ytd-donation-shelf-renderer {
    color: var(--text-color)
}

#nonprofit-title.ytd-donation-shelf-renderer yt-icon.ytd-donation-shelf-renderer {
    color: var(--accent-light)
}

.badge-style-type-ypc.ytd-badge-supported-renderer {
    color: var(--green)
}

.badge-style-type-ypc.ytd-badge-supported-renderer {
    background-color: var(--bg-lightest);
}

#hearted.ytd-creator-heart-renderer, #hearted-border.ytd-creator-heart-renderer {
    color: var(--accent)
}

tp-yt-paper-listbox.yt-dropdown-menu {
    background-color: var(--bg)
}

.badge-style-type-live-now.ytd-badge-supported-renderer, .badge-style-type-starting-soon.ytd-badge-supported-renderer {
    background: var(--red);
    color: var(--text-color);
}

#like-button.ytd-comment-action-buttons-renderer.style-default-active {
    color: var(--accent-lighter);
}

#dislike-button.ytd-comment-action-buttons-renderer.style-default-active {
    color: var(--accent-lighter);
}

ytd-topbar-menu-button-renderer #button.ytd-topbar-menu-button-renderer {
    display: none !important;
}

yt-live-chat-message-input-renderer {
    background: var(--bg);
    color: var(--text-color);
}

#picker-buttons.yt-live-chat-message-input-renderer > .yt-live-chat-message-input-renderer {
    color: var(--text-color)
}

#label.yt-live-chat-text-input-field-renderer {
    color: var(--text-color)
}

#unfocused.yt-live-chat-text-input-field-renderer {
    display: none;
}

#focused.yt-live-chat-text-input-field-renderer {
    background-color: var(--accent-light)
}

ytd-sentiment-bar-renderer[activated] #like-bar.ytd-sentiment-bar-renderer {
    background-color: var(--accent)
}

.cont-button.ytd-comment-replies-renderer {
    color: var(--accent-light)
}

#sections.ytd-multi-page-menu-renderer > .ytd-multi-page-menu-renderer:not(:last-child), ytd-multi-page-menu-renderer[menu-style="multi-page-menu-style-type-notifications"] #sections.ytd-multi-page-menu-renderer > .ytd-multi-page-menu-renderer {
    background-color: var(--bg);

}

.more-button.ytd-comment-renderer, .less-button.ytd-comment-renderer {
    color: var(--text-color)
}

::placeholder {
    color: var(--white) !important;
    opacity: 1 !important;
}

#search-icon-legacy.ytd-searchbox yt-icon.ytd-searchbox {
    opacity: 1 !important;
}

yt-formatted-string[has-link-only_]:not([force-default-style]) a.yt-simple-endpoint.yt-formatted-string:visited {
    color: var(--text-color)
}

.ytp-iv-drawer-open .iv-drawer, .iv-card-content {
    background: var(--bg)
}

.iv-card-message {

    color: var(--text-color);
}

.iv-card .iv-card-primary-link {
    color: var(--text-color) !important
}

.iv-card:hover .iv-card-primary-link, .iv-drawer-content * {
    color: var(--text-color) !important
}


#container.ytd-sentiment-bar-renderer {
    background-color: var(--bg-lightest)
}

#container.ytd-playlist-panel-renderer, .header.ytd-playlist-panel-renderer, .playlist-items.ytd-playlist-panel-renderer {

    background-color: var(--bg)
}

ytd-thumbnail-overlay-resume-playback-renderer {
    background-color: var(--bg-lightest)
}

ytd-toggle-button-renderer.style-grey-text[is-icon-button], .index-message-wrapper.ytd-playlist-panel-renderer, ytd-playlist-panel-video-renderer[watch-color-update] #index.ytd-playlist-panel-video-renderer {
    color: var(--text-color)
}

ytd-playlist-panel-video-renderer[watch-color-update][can-reorder]:hover.dragging, ytd-playlist-panel-video-renderer[watch-color-update][can-reorder].dragging, ytd-playlist-panel-video-renderer[watch-color-update]:hover:not(.dragging) {
    background-color: var(--bg-lighter) !important;
}

ytd-playlist-panel-video-renderer[selected][watch-color-update] {
    background-color: var(--bg-light) !important;
}

#author-name.moderator.yt-live-chat-author-chip, yt-live-chat-author-badge-renderer[type="moderator"] {
    color: var(--accent-light)
}

yt-sort-filter-sub-menu-renderer.ytd-comments-header-renderer {
    --iron-icon-fill-color: var(--text-color);
}

tp-yt-paper-listbox.yt-dropdown-menu tp-yt-paper-item.yt-dropdown-menu:hover {
    background-color: var(--bg-lighter)
}

tp-yt-paper-listbox.yt-dropdown-menu .iron-selected.yt-dropdown-menu {
    background-color: var(--bg-light)
}

#container.yt-live-chat-restricted-participation-renderer {
    background-color: var(--bg);
    color: var(--text-color);
}

#icon.yt-live-chat-restricted-participation-renderer {
    color: var(--text-color)
}

yt-live-chat-toast-renderer[is-showing-message] {
    background-color: var(--bg-light);
}

ytd-button-renderer[disabled][is-paper-button] a.ytd-button-renderer {
    background-color: var(--bg-lightest)
}

.ytp-live-badge[disabled]::before {
    background: var(--red)
}

.ytp-live-badge::before {
    background: var(--bg-lightest);
}

#icon.yt-live-chat-viewer-engagement-message-renderer {
    color: var(--red) !important;
}

#subtitle.ytd-rich-metadata-renderer, #call-to-action.ytd-rich-metadata-renderer {
    color: var(--text-color)
}

.ytp-settings-menu {
    background: var(--bg);
}

.ytp-popup   {
    background: var(--bg);
}

.iv-branding .branding-context-container-outer, .iv-branding .branding-context-container-inner {
    background: var(--bg);
}

.ytp-sb-subscribe, a.ytp-sb-subscribe {
    background: var(--accent);
}

.ytp-sb-unsubscribe {
    background-color: var(--bg-lightest);
    color: var(--text-color);
}

ytd-thumbnail-overlay-time-status-renderer {
    background-color: var(--bg);
    color: var(--text-color);
}

ytd-thumbnail-overlay-hover-text-renderer {
    background-color: var(--bg-transparent);
}

#info-bar.ytd-miniplayer {
    background: var(--bg);
}

.ytp-menuitem[aria-checked="true"] .ytp-menuitem-toggle-checkbox {
    background: var(--accent);
}

.ytp-menu-label-secondary {
    color: var(--text-color);
}

.ytp-menuitem:not([aria-disabled="true"]):hover {
    background-color: var(--bg-light)
}

#tooltip.tp-yt-paper-tooltip {
    background: var(--bg-light);
}

#like-button.ytd-comment-action-buttons-renderer:hover, #dislike-button.ytd-comment-action-buttons-renderer:hover {
    color: var(--accent-lightest)
}

ytd-menu-service-item-renderer[is-selected] {
    background: var(--bg-light)
}

tp-yt-paper-item.ytd-menu-service-item-renderer:hover, ytd-menu-service-item-renderer[is-selected] tp-yt-paper-item.ytd-menu-service-item-renderer:hover {
    background: var(--bg-lighter)
}

#info-bar.ytd-miniplayer .channel.ytd-miniplayer {
    color: var(--text-color);
}

ytd-notification-renderer.unread #new.ytd-notification-renderer {
    background-color: var(--accent)
}

html:not(.style-scope) {
       --yt-spec-static-brand-red: var(--accent);
}

.not-found {
    background: var(--bg);
}

.not-found-content__paragraph {
    color: var(--text-color)
}

.not-found-search__field,.not-found-search__search-button:hover, .not-found-search__search-button {
    background: var(--bg);

    box-shadow: none;
}

.not-found-search__search-button {
    color: var(--text-color) !important;
}

yt-icon.ytd-menu-navigation-item-renderer {
    color: var(--text-color)
}

yt-confirm-dialog-renderer[dialog][dialog][dialog], tp-yt-paper-dialog {
    background-color: var(--bg);
}

#scroller.yt-confirm-dialog-renderer {
    color: var(--text-color);
}

.unfocused-line.tp-yt-paper-input-container {
    border-color: var(--bg-lightest)
}

.underline.is-highlighted.tp-yt-paper-input-container .focused-line.tp-yt-paper-input-container {
    border-color: var(--accent)
}

.ytp-exp-ppp-update .ytp-paid-content-overlay-link {
    background: var(--bg-transparent);
    border-left: 4px solid var(--accent);
}

yt-report-form-modal-renderer[dialog][dialog][dialog] {
    background: var(--bg);
}

#offRadio.tp-yt-paper-radio-button {
    border-color: var(--text-color)
}

tp-yt-paper-radio-button[checked] #offRadio.tp-yt-paper-radio-button {
    border-color: var(--accent);
}

#onRadio.tp-yt-paper-radio-button {
    background: var(--accent)
}

yt-icon.yt-options-renderer {
    color: var(--text-color)
}

#bar.yt-copy-link-renderer {
    background: var(--bg);

}

.scroll-button.yt-third-party-share-target-section-renderer {
    background: var(--bg-light);
    color: var(--text-color);
    box-shadow: none;
}

#close-button.ytd-unified-share-panel-renderer {
    color: var(--text-color);
}

.ytp-cards-teaser .ytp-cards-teaser-text {
    color: var(--text-color);
}

.ytp-cards-teaser .ytp-cards-teaser-box {
    background: var(--bg);
}

.ytp-svg-fill {
    fill: var(--text-color)
}

.ytp-cards-teaser-shown .ytp-cards-button .ytp-svg-shadow {
    stroke: none;
}

yt-icon-button.yt-live-chat-header-renderer yt-icon.yt-live-chat-header-renderer {
    color: var(--text-color);
}

ytd-author-comment-badge-renderer:not([creator]) #icon.ytd-author-comment-badge-renderer {
    fill: var(--accent-light);
}

.ytp-ce-element {
    box-shadow: none;
}

.ytp-ce-video-duration {
    background: var(--bg);
    color: var(--text-color);
}

.ytp-videowall-still-info-live {
    background: var(--red);
}

ytd-thumbnail-overlay-toggle-button-renderer {
    background: var(--bg);
    color: var(--text-color);
}

.ytp-error {
    background: var(--bg);
}

.ytp-error-icon-container > svg {
    fill: var(--text-color)
}


#copyright > div {
    display: inline-block;
    visibility: hidden;
    height: 10px;
}

ytd-settings-sidebar-renderer, ytd-app {
    background: var(--bg);
}

.toggle-button.tp-yt-paper-toggle-button {
    background: var(--text-color)
}

.toggle-bar.tp-yt-paper-toggle-button, tp-yt-paper-toggle-button[checked]:not([disabled]) .toggle-bar.tp-yt-paper-toggle-button {
    background: var(--bg-lightest)
}

tp-yt-paper-toggle-button[checked]:not([disabled]) .toggle-button.tp-yt-paper-toggle-button {
    background: var(--accent)
}

#subtitle.ytd-settings-switch-renderer, #subtitle.ytd-item-section-header-renderer, #text.ytd-page-introduction-renderer, #title.ytd-settings-sidebar-renderer, tp-yt-iron-icon.tp-yt-paper-dropdown-menu-light, #text.ytd-settings-options-renderer {
    color: var(--text-color)
}

#author-name.member.yt-live-chat-author-chip {
    color: var(--green)
}

a.yt-simple-endpoint.yt-formatted-string:visited {
    color: var(--accent-light)
}

#header.ytd-engagement-panel-title-header-renderer, ytd-macro-markers-list-item-renderer {
    background: var(--bg);
}

ytd-macro-markers-list-item-renderer:hover, ytd-macro-markers-list-item-renderer[active] {
    background: var(--bg-light)
}

#sync-container.ytd-macro-markers-list-renderer {
    background: var(--bg);
    color: var(--text-color);
    box-shadow: none;
}

#time.ytd-macro-markers-list-item-renderer {
    background: var(--accent);
    color: var(--text-color);
}

#active-indicator.ytd-macro-markers-list-item-renderer {
    background: var(--accent);
}

ytd-macro-markers-list-item-renderer[active] #thumbnail.ytd-macro-markers-list-item-renderer {
    outline: 2px solid var(--accent);
}

.ytp-bezel-text {
    background: var(--bg);
}

#metadata-line.ytd-grid-video-renderer, #description-text.ytd-video-renderer {
    color: var(--text-color);
}

button.yt-icon-button[aria-label="Search"] > yt-icon > svg > g > path {
    fill: var(--text-color);
}

.ytp-large-play-button-bg {
    fill: var(--bg-light);
}

.ytp-cued-thumbnail-overlay-image:hover {
    opacity: .5;
    transition: .25s cubic-bezier(0,0,0.2,1);
}

tp-yt-paper-toast {
    background: var(--bg-light);
    box-shadow: none;
}

ytd-thumbnail-overlay-side-panel-renderer {
    background: var(--bg-light)
}

ytd-thumbnail-overlay-endorsement-renderer {
    background: var(--bg-light);
    color: var(--text-color);
}

#details-container.ytd-channel-about-metadata-renderer table.ytd-channel-about-metadata-renderer, .deemphasize.yt-formatted-string {
    color: var(--text-color);
}
ytd-engagement-panel-section-list-renderer[dialog] #content.ytd-engagement-panel-section-list-renderer  {
    background: var(--bg)
}

#background.ytd-masthead {
    display: none;
}

#frosted-glass {
    display: none;
}
`)