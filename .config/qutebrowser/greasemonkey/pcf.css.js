// ==UserScript==
// @name    Userstyle (pcf.css)
// @include    https://wirelyre.github.io/tetra-tools/pc-solver.html*
// ==/UserScript==
GM_addStyle(`body {
  color: #fff;
  background-color: #2e3440;
  font-family: monospace;
}

#query {
  border-color: transparent;
}

#queue {
  color: #fff;
  border: 1px solid #434c5e;
}

#query details,
#query details[open] {
  color: #ccc;
}

#initial-info {
    color: #a3be8c;
}

#initial-info,
#query div.label {
  font-family: monospace;
}

#initial > input:nth-child(-n + 10) {
  border-top: 1px solid #434c5e;
}

#initial > input:nth-child(10n + 1) {
  border-left: 1px solid #434c5e;
}

#initial > input {
  background-color: #3b4252;
  border-right: 1px solid #434c5e;
  border-bottom: 1px solid #434c5e;
}

#initial > input:checked {
  background-color: #e5e9f0;
  border-right: 1px solid #434c5e;
  border-bottom: 1px solid #434c5e;
}
#queue {
  background-color: #3b4252;
}

mino-board rect[fill="#F3F3ED"] {
  fill: #3b4252;
}

mino-board rect[fill="#E7E7E2"] {
  fill: #3b4252;
}
`)