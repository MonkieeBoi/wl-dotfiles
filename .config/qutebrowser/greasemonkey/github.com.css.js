// ==UserScript==
// @name    Userstyle (github.com.css)
// @include    https://github.com/*
// ==/UserScript==
GM_addStyle(`:root {
    --nord0: #2e3440;
    --nord1: #3b4252;
    --nord2: #434c5e;
    --nord3: #4c566a;
    --nord4: #d8dee9;
    --nord5: #e5e9f0;
    --nord6: #eceff4;
    --nord7: #8fbcbb;
    --nord8: #88c0d0;
    --nord9: #81a1c1;
    --nord10: #5e81ac;
    --nord11: #bf616a;
    --nord12: #d08770;
    --nord13: #ebcb8b;
    --nord14: #a3be8c;
    --nord15: #b48ead;
    --nord3-4: #929AAA;

    --color-bg-canvas: var(--nord0) !important;
    --color-bg-canvas-inset: var(--color-bg-canvas) !important;
    --color-bg-primary: var(--color-bg-canvas) !important;
    --color-bg-secondary: var(--nord1) !important;
    --color-bg-overlay: var(--color-bg-secondary) !important;
    --color-bg-tertiary: var(--nord3) !important;
    --color-text-primary: var(--nord4) !important;
    --color-text-secondary: var(--nord5) !important;
    --color-border-primary: var(--nord1) !important;
    --color-border-secondary: var(--nord0) !important;

    --color-header-bg: var(--color-bg-canvas) !important;

    --color-input-bg: var(--nord2) !important;
    --color-input-border: var(--color-border-primary) !important;
    --color-input-contrast-bg: var(--nord3) !important;

    --color-header-search-bg: var(--color-input-bg) !important;
    --color-header-search-border: var(--color-input-border) !important;

    --color-text-link: var(--nord8) !important;
    --color-text-disabled: var(--nord2) !important;
    
    --color-icon-tertiary: var(--nord4) !important;

    --color-btn-bg: var(--nord2) !important;
    --color-btn-text: var(--color-text-primary) !important;
    --color-btn-selected-bg: var(--nord3) !important;
    --color-btn-hover-bg: var(--nord3-4) !important;
    --color-btn-hover-border: var(--nord3-4) !important;
    
    --color-btn-primary-bg: var(--nord10) !important;
    --color-btn-primary-border: var(--nord9) !important;
    --color-btn-primary-hover-bg: var(--nord9) !important;
    --color-btn-primary-disabled-bg: var(--nord8) !important;
    --color-btn-primary-selected-bg: var(--nord14) !important;
    
    --color-btn-danger-text: var(--nord11) !important;
    --color-btn-danger-hover-text: var(--nord5) !important;
    --color-btn-danger-hover-bg: var(--nord11) !important;
    
    --color-btn-outline-text: var(--nord9) !important;
    --color-btn-outline-disabled-text: var(--nord3) !important;
    --color-btn-outline-disabled-bg: var(--nord1) !important;
    --color-btn-outline-hover-bg: var(--nord0) !important;
    --color-btn-outline-hover-text: var(--nord9) !important;
    --color-btn-outline-hover-border: var(--nord9) !important;
    
    --color-state-selected-primary-bg: var(--nord10) !important;
    --color-state-selected-primary-border: var(--nord10) !important;
    --color-state-selected-primary-text: var(--nord4) !important;

    --color-tabnav-selected-bg: var(--nord2) !important;

    --color-previewable-comment-form-bg: var(--color-tabnav-selected-bg) !important;

    --color-social-count-bg: var(--nord2) !important;

    --color-box-bg-info: var(--nord2) !important;
    --color-box-border-info: var(--color-border-primary) !important;

    --color-dropdown-bg: var(--nord1) !important;
    --color-dropdown-border: var(--color-input-border) !important;
    --color-dropdown-shadow: 0 8px 24px rgba(46, 52, 64, 0.2) !important;

    --color-bg-info-inverse: var(--nord8) !important;
    --color-bg-info: var(--nord8) !important;

    --color-state-hover-primary-bg: var(--nord8) !important;
    --color-state-hover-secondary-bg: var(--nord8) !important;

    --color-calendar-graph-day-bg: var(--nord2) !important;
    --color-calendar-graph-day-L1-bg: var(--nord7) !important;
    --color-calendar-graph-day-L2-bg: var(--nord8) !important;
    --color-calendar-graph-day-L3-bg: var(--nord9) !important;
    --color-calendar-graph-day-L4-bg: var(--nord10) !important;

    --color-underlinenav-text: var(--nord4) !important;
    --color-underlinenav-text-hover: var(--nord9) !important;
    --color-underlinenav-text-active: var(--nord9) !important;

    --color-verified-badge-bg: var(--nord14) !important;
    --color-verified-badge-text: var(--nord4) !important;
    --color-verified-badge-border: var(--nord9) !important;

    --color-diff-blob-num-text: var(--nord4) !important;
    --color-diff-blob-hunk-text: var(--nord4) !important;
    --color-diff-blob-expander-icon: var(--nord4) !important;
    --color-diff-blob-hunk-num-bg: var(--color-bg-tertiary) !important;
    --color-diff-blob-hunk-line-bg: var(--color-bg-tertiary) !important;
    --color-diffstat-deletion-bg: var(--nord11) !important;
    --color-diffstat-deletion-border: var(--nord11) !important;
    --color-diff-blob-deletion-num-bg: var(--nord11) !important;
    --color-diff-blob-deletion-line-bg: var(--nord11) !important;
    --color-diffstat-addition-bg: var(--nord14) !important;
    --color-diffstat-addition-border: var(--nord14) !important;
    --color-diff-blob-addition-num-bg: var(--nord14) !important;
    --color-diff-blob-addition-line-bg: var(--nord14) !important;
    --color-diff-blob-comment-button-bg: var(--nord10) !important;

    --contribution-default-bgColor-1: var(--nord7) !important;
    --contribution-default-bgColor-2: var(--nord8) !important;
    --contribution-default-bgColor-3: var(--nord9) !important;
    --contribution-default-bgColor-4: var(--nord10) !important;
}
/* Global styles */
::placeholder {
    color: var(--nord4) !important;
}

kbd {
    color: var(--nord4) !important;
}

.form-control,
.form-select {
    border: none !important;
}

/* Buttons/links/pills/badges */

summary.btn {
    color: var(--color-text-primary) !important;
    background-color: var(--nord3) !important;
}

.btn-link:disabled {
    filter: contrast(40%);
    color: inherit !important;
}

.btn-outline:hover {
    mix-blend-mode: lighten;
}

.btn:hover svg {
    mix-blend-mode: hard-light;
}

.branch-name,
.commit-ref {
    color: var(--nord10) !important;
    background-color: var(--nord3) !important;
}

.signed-commit-badge.verified,
.Label--success {
    border-color: var(--nord2);
    color: var(--nord14);
}

.signed-commit-badge.verified:hover {
    border-color: var(--nord3);
}

.notifications-list-item:hover,
.notifications-list-item:hover.notification-unread .notification-list-item-link {
    color: var(--nord2) !important;
}

.notification-indicator .mail-status,
.add-line-comment {
    background-image: linear-gradient(var(--nord10),var(--nord9));
}

.UnderlineNav-item.selected {
    border-bottom-color: var(--nord12) !important;
}

/* Boxes/wrappers */

.application-main .bg-gray,
.application-main aside {
    background-color: var(--color-bg-canvas) !important;
}

.Box,
.Box-header {
    background-color: var(--nord1) !important;
    border: 1px solid var(--nord2) !important;
}

.Box-header {
    border: none !important;
    border-bottom: 1px solid var(--color-input-border) !important;
}

.AvatarStack-body {
    background-color: rgba(0, 0, 0, 0) !important;
}

/** Commit/diff **/

.commit.open {
    color: var(--nord4) !important;
}

.blob-code-inner.blob-code-marker[data-code-marker="+"]::before {
    color: var(--nord10);
    font-weight: bold;
}

.blob-code-inner.blob-code-marker[data-code-marker="-"]::before {
    color: var(--nord4);
    font-weight: bold;
}

.blob-code-addition .pl-s,
.blob-code-addition .pl-pds {
 color: var(--nord10) !important;   
}

.blob-code-deletion .pl-c {
    color: var(--nord1) !important;
}

.commit {
    background: var(--nord3) !important;
}

.blob-num-deletion::before {
    mix-blend-mode: multiply;
}

/*! GitHub: One Dark */
/* adapted from: https://github.com/atom/one-dark-syntax & https://github.com/Aerobird98/codemirror-one-dark-theme */
/* by https://github.com/sparcut */
:root {
    --ghd-code-background: hsl(0, 0%, 8%);
    --ghd-code-color: hsl(220, 14%, 71%);
}
/* comment, punctuation.definition.comment, string.comment */
.pl-c,
.pl-c span {
    color: hsl(220, 10%, 40%) !important;
    font-style: italic !important;
}
/* constant, entity.name.constant, variable.other.constant, variable.language,
support, meta.property-name, support.constant, support.variable,
 meta.module-reference, markup.raw, meta.diff.header */
.pl-c1 {
    color: hsl(29, 54%, 61%) !important;
}
/* string.regexp constant.character.escape */
.pl-sr .pl-cce {
    color: hsl(187, 47%, 55%) !important;
    font-weight: normal !important;
}
.pl-cn {
    color: hsl(29, 54%, 61%) !important;
}
.pl-e {
    color: hsl(29, 54%, 61%) !important;
}
/* entity */
.pl-ef {
    color: hsl(207, 82%, 66%) !important;
}
/* entity.function */
.pl-en {
    color: hsl(29, 54%, 61%) !important;
}
/* entity.name */
.pl-enc {
    color: hsl(39, 67%, 69%) !important;
}
/* entity.name.class */
.pl-enf {
    color: hsl(207, 82%, 66%) !important;
}
/* entity.name.function */
.pl-enm {
    color: hsl(220, 14%, 71%) !important;
}
/* entity.name.method-name */
.pl-ens {
    color: hsl(5, 48%, 51%) !important;
}
/* entity.name.section */
.pl-ent {
    color: hsl(355, 65%, 65%) !important;
}
/* entity.name.tag */
.pl-entc {
    color: hsl(39, 67%, 69%) !important;
}
/* entity.name.type.class */
.pl-enti {
    color: hsl(187, 47%, 55%) !important;
}
/* entity.name.type.instance */
.pl-entm {
    color: hsl(355, 65%, 65%) !important;
}
/* entity.name.type.module */
.pl-eoa {
    color: hsl(29, 54%, 61%) !important;
}
/* entity.other.attribute-name */
.pl-eoac {
    color: hsl(29, 54%, 61%) !important;
}
/* entity.other.attribute-name.class */
.pl-eoac .pl-pde {
    color: hsl(29, 54%, 61%) !important;
}
/* punctuation.definition.entity */
.pl-eoai {
    color: hsl(207, 82%, 66%) !important;
}
/* entity.other.attribute-name.id */
.pl-eoi {
    color: hsl(95, 38%, 62%) !important;
}
/* entity.other.inherited-class */
.pl-k {
    color: hsl(286, 60%, 67%) !important;
}
/* keyword, storage, storage.type */
.pl-ko {
    color: hsl(220, 14%, 71%) !important;
}
/* keyword.operator */
.pl-kolp {
    color: hsl(286, 60%, 67%) !important;
}
/* keyword.operator.logical.python */
.pl-kos {
    color: hsl(207, 82%, 66%) !important;
}
/* keyword.other.special-method */
.pl-kou {
    color: hsl(29, 54%, 61%) !important;
}
/* keyword.other.unit */
.pl-mai .pl-sf {
    color: hsl(187, 47%, 55%) !important;
}
/* support.function */
.pl-mb {
    color: hsl(29, 54%, 61%) !important;
    font-weight: bold !important;
}
/* markup.bold */
.pl-mc {
    color: hsl(286, 60%, 67%) !important;
}
/* markup.changed, punctuation.definition.changed */
.pl-mh {
    color: hsl(355, 65%, 65%) !important;
}
/* markup.heading */
/* markup.heading punctuation.definition.heading */
.pl-mh .pl-pdh {
    color: hsl(207, 82%, 66%) !important;
}
.pl-mi {
    color: hsl(286, 60%, 67%) !important;
    font-style: italic !important;
}
/* markup.italic */
.pl-ml {
    color: hsl(187, 47%, 55%) !important;
}
/* markup.list */
.pl-mm {
    color: hsl(29, 54%, 61%) !important;
}
/* meta.module-reference */
.pl-mp {
    color: hsl(220, 9%, 55%) !important;
}
/* meta.property-name */
.pl-mp1 .pl-sf {
    color: hsl(220, 14%, 71%) !important;
}
/* meta.property-value support.function */
.pl-mq {
    color: hsl(29, 54%, 61%) !important;
}
/* markup.quote */
.pl-mr {
    color: hsl(207, 82%, 66%) !important;
}
/* meta.require */
.pl-ms {
    color: hsl(220, 14%, 71%) !important;
}
/* meta.separator */
/* punctuation.definition.bold */
.pl-pdb {
    color: hsl(39, 67%, 69%) !important;
    font-weight: bold !important;
}
/* punctuation.definition.comment */
.pl-pdc {
    color: hsl(220, 10%, 40%) !important;
    font-style: italic !important;
}
.pl-pdc1 {
    color: hsl(220, 14%, 71%) !important;
}
/* punctuation.definition.constant */
.pl-pde {
    color: hsl(286, 60%, 67%) !important;
}
/* punctuation.definition.entity */
/* punctuation.definition.italic */
.pl-pdi {
    color: hsl(286, 60%, 67%) !important;
    font-style: italic !important;
}
/* punctuation.definition.string, source.regexp, string.regexp.character-class */
.pl-pds {
    color: hsl(95, 38%, 62%) !important;
}
.pl-pdv {
    color: hsl(355, 65%, 65%) !important;
}
/* punctuation.definition.variable */
/* string punctuation.section.embedded source */
.pl-pse .pl-s1 {
    color: hsl(95, 38%, 62%) !important;
}
.pl-pse .pl-s2 {
    color: hsl(39, 67%, 69%) !important;
}
/* punctuation.section.embedded source */
.pl-s {
    color: hsl(95, 38%, 62%) !important;
}
/* string */
.pl-s1 {
    color: hsl(95, 38%, 62%) !important;
}
/* string */
.pl-s2 {
    color: hsl(39, 67%, 69%) !important;
}
/* source */
.pl-mp .pl-s3 {
    color: hsl(29, 54%, 61%) !important;
}
/* support */
.pl-s3 {
    color: hsl(29, 54%, 61%) !important;
}
/* support */
.pl-sc {
    color: hsl(39, 67%, 69%) !important;
}
/* support.class */
.pl-scp {
    color: hsl(220, 14%, 71%) !important;
}
/* support.constant.property-value */
.pl-sf {
    color: hsl(187, 47%, 55%) !important;
}
/* support.function */
.pl-smc {
    color: hsl(220, 14%, 71%) !important;
}
/* storage.modifier.c */
/* variable.parameter.function, storage.modifier.package,
 storage.modifier.import, storage.type.java, variable.other */
.pl-smi {
    color: hsl(355, 65%, 65%) !important;
}
.pl-smp {
    color: hsl(39, 67%, 69%) !important;
}
/* storage.modifier.package */
.pl-sok {
    color: hsl(29, 54%, 61%) !important;
}
/* support.other.keyword */
.pl-sol {
    color: hsl(355, 65%, 65%) !important;
}
/* string.other.link */
.pl-som {
    color: hsl(220, 14%, 71%) !important;
}
/* support.other.module */
.pl-sr {
    color: hsl(187, 47%, 55%) !important;
}
/* string.regexp */
/* string.regexp string.regexp.arbitrary-repitition */
.pl-sr .pl-sra {
    color: hsl(187, 47%, 55%) !important;
}
.pl-src {
    color: hsl(187, 47%, 55%) !important;
}
/* string.regexp.character-class */
.pl-sr .pl-sre {
    color: hsl(39, 67%, 69%) !important;
}
/* string.regexp source.ruby.embedded */
.pl-st {
    color: hsl(187, 47%, 55%) !important;
}
/* support.type */
.pl-stj {
    color: hsl(39, 67%, 69%) !important;
}
/* storage.type.java */
.pl-stp {
    color: hsl(220, 9%, 55%) !important;
}
/* support.type.property-name */
.pl-sv {
    color: hsl(29, 54%, 61%) !important;
}
/* support.variable */
.pl-v {
    color: hsl(39, 67%, 69%) !important;
}
/* variable */
.pl-vi {
    color: hsl(5, 48%, 51%) !important;
}
/* variable.interpolation */
.pl-vo {
    color: hsl(187, 47%, 55%) !important;
}
/* variable.other */
.pl-vpf {
    color: hsl(220, 14%, 71%) !important;
}
/* variable.parameter.function */
/* markup.inserted, meta.diff.header.to-file, punctuation.definition.inserted */
.pl-mi1 {
    color: hsl(95, 38%, 62%) !important;
    background: #020 !important;
}
/* meta.diff.header.to-file */
.pl-mdht {
    color: hsl(95, 38%, 62%) !important;
    background: #020 !important;
}
/* markup.deleted, meta.diff.header.from-file, punctuation.definition.deleted */
.pl-md {
    color: hsl(355, 65%, 65%) !important;
    background: #200 !important;
}
/* meta.diff.header.from-file */
.pl-mdhf {
    color: hsl(355, 65%, 65%) !important;
    background: #200 !important;
}
/* meta.diff.range */
.pl-mdr {
    color: hsl(220, 14%, 71%) !important;
    font-weight: normal !important;
}
.pl-mdh {
    color: hsl(355, 65%, 65%) !important;
    font-weight: normal !important;
}
/* meta.diff.header */
.pl-mdi {
    color: hsl(355, 65%, 65%) !important;
    font-weight: normal !important;
}
/* meta.diff.index */
/* constant.other.reference.link, string.other.link */
.pl-corl {
    color: hsl(355, 65%, 65%) !important;
    text-decoration: underline !important;
}
.pl-ib {
    background-color: hsl(355, 65%, 65%) !important;
}
/* invalid.broken */
.pl-bu,
/* invalid.broken, invalid.deprecated, invalid.unimplemented, message.error, brackethighlighter.unmatched, sublimelinter.mark.error */
.pl-ii {
    background-color: hsl(0, 70%, 60%) !important;
}
/* invalid.illegal */
.pl-mo {
    color: hsl(220, 14%, 71%) !important;
}
/* meta.output */
.pl-mri {
    color: hsl(95, 38%, 62%) !important;
}
/* markup.raw.inline */
.pl-ms1 {
    color: hsl(220, 14%, 71%) !important;
    background-color: #373b41 !important;
}
/* meta.separator */
.pl-va {
    color: hsl(220, 14%, 71%) !important;
}
/* variable.assignment */
.pl-vpu {
    color: hsl(220, 14%, 71%) !important;
}
/* variable.parameter.url */
.pl-entl {
    color: hsl(355, 65%, 65%) !important;
}
/* entity.name.tag.label */
.pl-token.active,
.pl-token:hover {
    background: hsl(207, 82%, 66%) !important;
    color: hsl(0, 0%, 8%) !important;
}

.CodeMirror,
.cm-s-github-light.CodeMirror,
.CodeMirror-code,
.CodeMirror-gutter-filler,
.CodeMirror-scrollbar-filler,
.cm-s-github-light .CodeMirror-linenumbers,
.cm-s-github-light .CodeMirror-lines {
    background: var(--nord1) !important;
    background-color: var(--nord1) !important;
    color: var(--nord4) !important;
}
`)