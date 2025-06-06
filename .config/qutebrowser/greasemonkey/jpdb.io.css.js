// ==UserScript==
// @name    Userstyle (jpdb.io.css)
// @include    https://jpdb.io/*
// ==/UserScript==
GM_addStyle(`:root {
	--outline-v2-color: #a0a0a0;
	--outline-v3-color: #d08770;
	--outline-v4-color: #a3be8c;
	--state-known: #a3be8c;
	--state-overdue: #d08770;
	--state-failed: #bf616a;
    --button-hover-border-color: #5e81ac;
    --button-focused-border-color: #5e81ac;
}

.dark-mode {
	--text-color: #d8dee9;
	--text-strong-color: #fff;
	--background-color: #2e3440;
	--deeper-background-color: #22262e;
	--checkbox-border-size: 2px;
	--outline-input-background-color-review: #2e3440;
	--outline-input-background-color: #2e3440  ;
	--outline-v1-color: #bf616a;
	--input-border-color: #4c566a;
	--input-background-color: #3b4252;
	--review-button-group-shadow: #4c566a;
	--review-button-group-border: #3b4252;
    --kanji-fill-color: #d8dee9;
}

.outline.v1, .outline.v1:hover {
    color: var(--text-color);
    border: 2px solid var(--outline-v1-color);
}

.outline.v3, .outline.v3:hover {
    color: var(--text-color);
    border: 2px solid var(--outline-v3-color);
}

.outline.v4, .outline.v4:hover {
    color: var(--text-color);
    border: 2px solid var(--outline-v4-color);
}

#grade-5, #grade-permaknown {
    color: var(--text-color);
    border: 2px solid var(--button-focused-border-color);
}
`)