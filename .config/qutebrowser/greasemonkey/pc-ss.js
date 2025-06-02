// ==UserScript==
// @name         Wirelyre Screenshot Paste
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  save selection
// @author       MonkeyBoy
// @match        https://wirelyre.github.io/tetra-tools/pc-solver.html*
// @grant        none
// @license      MIT
// ==/UserScript==

// Most code is from https://github.com/Hsterts/Fumenities

document.addEventListener("paste", async (e) => {
  for (const file of e.clipboardData.files) {
    importImage(file);
  }
});

function importImage(blob) {
  var img = new Image();

  img.onload = function () {
    let numcols = 10;
    let scale = this.width / numcols;
    let numrows = Math.round(this.height / scale);
    if (numrows != 4) {
      console.log("Wrong aspect ratio, must be 10:4");
      return;
    }

    let mycanvas = document.createElement("canvas");
    mycanvas.width = this.width;
    mycanvas.height = this.height;

    let ctx = mycanvas.getContext("2d");
    ctx.imageSmoothingEnabled = false;
    ctx.drawImage(img, 0, 0, this.width, this.height);
    let data = Object.values(
      ctx.getImageData(0, 0, this.width, this.height).data,
    );

    filledMinos = 0;
    for (let row = 0; row < numrows; row++) {
      for (let col = 0; col < numcols; col++) {
        let minoPixelsR = [];
        let minoPixelsG = [];
        let minoPixelsB = [];

        for (
          let pixelRow = Math.floor(row * scale);
          pixelRow < row * scale + scale;
          pixelRow++
        ) {
          for (
            let pixelCol = Math.floor(col * scale);
            pixelCol < col * scale + scale;
            pixelCol++
          ) {
            let index = (pixelRow * this.width + pixelCol) * 4;
            minoPixelsR.push(data[index]);
            minoPixelsG.push(data[index + 1]);
            minoPixelsB.push(data[index + 2]);
          }
        }

        let hsv = rgb2hsv(
          median(minoPixelsR),
          median(minoPixelsG),
          median(minoPixelsB),
        );
        fil = filled(...hsv);
        cell = (numrows - 1 - row) * numcols + col;
        if (fil) {
          filledMinos += 1;
        }
        document.getElementById(`cell${cell}`).checked = fil;
      }
    }
    cells = numrows * numcols;
    if (filledMinos % 4 == 2) {
      for (let cell = cells - numcols; cell < cells; cell++) {
        document.getElementById(`cell${cell}`).checked = true;
      }
    }
  };

  var URLObj = window.URL || window.webkitURL;
  img.src = URLObj.createObjectURL(blob);
}

function inRange(number, min, max) {
  return (min <= number && number <= max);
}

function median(values) {
  if (values.length === 0) {
    throw new Error("No inputs");
  }

  values.sort(function (a, b) {
    return a - b;
  });

  var half = Math.floor(values.length / 2);

  if (values.length % 2) {
    return values[half];
  }

  return (values[half - 1] + values[half]) / 2.0;
}

function rgb2hsv(r, g, b) {
  let v = Math.max(r, g, b), c = v - Math.min(r, g, b);
  let h = c &&
    (v == r ? (g - b) / c : v == g ? 2 + (b - r) / c : 4 + (r - g) / c);
  return [60 * (h < 0 ? h + 6 : h), v && c / v, v];
}

function filled(h, s, v) {
  if (
    inRange(h, 0, 30) && inRange(s, 0, 1) &&
    (inRange(v, 133, 135) || inRange(v, 63, 88))
  ) {
    return true;
  }
  if (inRange(h, 220, 225) && inRange(s, 0, 0.2) && v == 65) {
    return false;
  }

  if (s <= 0.2 && v / 2.55 >= 55) {
    return true;
  }
  if (v / 2.55 <= 55) {
    return false;
  }

  if (
    inRange(h, 0, 16) || inRange(h, 325, 360) ||
    inRange(h, 17, 41) || inRange(h, 42, 70) ||
    inRange(h, 71, 149) || inRange(h, 150, 200) ||
    inRange(h, 201, 266) || inRange(h, 267, 325)
  ) {
    return true;
  }
  return false;
}
