// ==UserScript==
// @name         Wirelyre Select Saves (with next pc save)
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  save selection
// @author       13pake, TamTheBoss111
// @match        https://wirelyre.github.io/tetra-tools/pc-solver.html*
// @grant        none
// @license      MIT
// ==/UserScript==

(function () {
  "use strict";

  // Constants
  var pieces = ["T", "I", "L", "J", "S", "Z", "O"];
  var colors = [
    "rgb(180, 81, 172)", // purple
    "rgb(65, 175, 222)", // cyan
    "rgb(239, 149, 54)", // orange
    "rgb(24, 131, 191)", // blue
    "rgb(102, 198, 92)", // green
    "rgb(239,  98, 77)", // red
    "rgb(247, 211, 62)", // yellow
  ];

  GM_addStyle("#solutions > a { border-radius: 4px; }");
  GM_addStyle("#solutions { row-gap: 20px; }");
  GM_addStyle("#label-save { margin-top: 10px; cursor: default; }");
  GM_addStyle(`[id^="select-"] {
    color: #fff;
    margin-left: 5px;
    border: 1px solid #9a9a9a;
    cursor: pointer;
  }`);
  GM_addStyle(`#select-All { color: #000; }`);
  GM_addStyle(`#select-T { background-color: ${colors[0]}; }`);
  GM_addStyle(`#select-I { background-color: ${colors[1]}; }`);
  GM_addStyle(`#select-L { background-color: ${colors[2]}; }`);
  GM_addStyle(`#select-J { background-color: ${colors[3]}; }`);
  GM_addStyle(`#select-S { background-color: ${colors[4]}; }`);
  GM_addStyle(`#select-Z { background-color: ${colors[5]}; }`);
  GM_addStyle(`#select-O { background-color: ${colors[6]}; }`);

  window.addEventListener("load", function () {
    // Add save selection
    var label = document.createElement("label");
    label.id = "label-save";
    label.innerHTML = "Save ";
    document.querySelectorAll("#query > div:nth-child(6)")[0].appendChild(
      label,
    );

    var selectOptions = ["All", ...pieces];

    for (var i = 0; i < selectOptions.length; i++) {
      var button = document.createElement("button");
      button.textContent = selectOptions[i];
      button.onclick = function () {
        selectSave(this.textContent);
      };
      button.id = `select-${selectOptions[i]}`;
      label.appendChild(button);
    }

    function selectSave(value) {
      if (value !== "All") {
        document.querySelectorAll("#solutions > a").forEach(function (a) {
          a.style.display = "none";
        });
        document.querySelectorAll("#solutions > a." + value).forEach(
          function (a) {
            a.style.display = "block";
          },
        );
      } else {
        document.querySelectorAll("#solutions > a").forEach(function (a) {
          a.style.display = "block";
        });
      }
    }

    // Add listener for solutions and also the whole body for the slider
    var targetNode = document.getElementById("solutions");
    var config = {
      // attributes: true,
      childList: true,
      subtree: true,
      characterData: true,
    };

    var observer = new MutationObserver(function (mutationsList) {
      var queue = document.getElementById("queue").value;

      // check if queue is just pieces
      var piecesOnlyMatch = queue.match(/^[TILJSZO]*$/);
      if (!piecesOnlyMatch) {
        return;
      }
      var queuePieces = pieces.map(function (piece) {
        return (queue.split(piece).length - 1);
      });

      // We're just gonna assume the queue length is correct !!!

      //console.log('queue pieces', queuePieces);

      for (var mutation of mutationsList) {
        if (mutation.type == "childList") {
          // console.log('A child node has been added or removed.', mutation.addedNodes[0]);
          try {
            var aNode = mutation.addedNodes[0];
            var dataField = aNode.firstChild.getAttribute("data-field");
            var solutionPieces = pieces.map(function (piece) {
              return (dataField.split(piece).length - 1) / 4;
            });
            // console.log('pieces used', solutionPieces);

            // get difference between arrays
            var differentIndex = -1;
            for (let i = 0; i < queuePieces.length; i++) {
              if (queuePieces[i] !== solutionPieces[i]) {
                differentIndex = i;
              }
            }
            // console.log('saved piece', pieces[differentIndex]);
            aNode.style.borderTop = "10px solid " + colors[differentIndex];
            aNode.classList.add(pieces[differentIndex]);
          } catch (e) {
            // do nothing lol
          }
        }
      }
    });

    observer.observe(targetNode, config);

    document.onkeydown = (event) => {
      if (event.shiftKey && event.key == "Escape") {
        selectSave("All");
        return;
      }
      if (!event.altKey || !pieces.includes(event.key.toUpperCase())) {
        return;
      }
      selectSave(event.key.toUpperCase());
      event.preventDefault();
      event.stopPropagation();
    };
  });
})();
