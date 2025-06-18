// ==UserScript==
// @name         Fumenities Emoji Export
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Emoji Export
// @author       MonkeyBoy
// @match        https://hsterts.github.io/Fumenities*
// @grant        none
// @license      MIT
// ==/UserScript==

(function () {
  "use strict";

  // Constants
  let emoji_map = {
    "I": "📘",
    "J": "🟦",
    "L": "🟧",
    "O": "🟨",
    "S": "🟩",
    "T": "🟪",
    "Z": "🟥",
    "X": "⬜",
    "_": "⬛",
    "\n": "                                       ",
  };

  window.addEventListener("load", function () {
    const { decoder } = require("tetris-fumen");

    const fumen_export = (event) => {
      let field = decoder.decode(
        document.getElementById("boardOutput").value,
      )[0].field.str({ garbage: false });

      if (event.ctrlKey) {
        let height = (field.match(/$/gm) || []).length;
        while ((field.match(/_$/gm) || []).length == height) {
          field = field.replaceAll(/_$/gm, "");
        }
        while ((field.match(/^_/gm) || []).length == height) {
          field = field.replaceAll(/^_/gm, "");
        }
      }
      if (!event.shiftKey) {
        for (const [mino, emoji] of Object.entries(emoji_map)) {
          field = field.replaceAll(mino, emoji);
        }
      } else {
        field = field.replaceAll("\n", emoji_map["\n"]);
      }

      navigator.clipboard.writeText(field);
    };

    const tooltip = document.createElement("div");
    tooltip.classList.add("tooltip");

    const tooltipText = document.createElement("span");
    tooltipText.textContent = "Export the first page as a field of emojis";
    tooltipText.classList.add("tooltiptext");

    const button = document.createElement("button");
    button.classList.add("fumen-option");
    button.onclick = fumen_export;
    button.innerHTML = "<b>Export Emoji</b>";

    tooltip.appendChild(button);
    tooltip.appendChild(tooltipText);

    document.querySelector(".import-export").appendChild(
      tooltip,
    );
  });
})();
