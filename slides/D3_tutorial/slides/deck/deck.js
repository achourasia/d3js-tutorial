(function() {
  "use strict";
  var m, n, slide;
  slide = null;
  n = d3.selectAll('section')._groups[0].length;

  function update(newSlide) {
    newSlide = Math.min(Math.max(newSlide, 0), n - 1);
    if (slide === newSlide) return;
    slide = newSlide;
    window.location.href = window.location.href.replace(/#.+$/, '') + '#' + String(slide + 1);
    d3.selectAll('section').style('display', function(d, i) {
      if (i === slide) {
        return null;
      } else {
        return 'none';
      }
    }).each(function(d, i) {
      if (i === slide && typeof d === 'function') {
        d();
      }
    });
  };

  if (m = window.location.href.match(/#(\d+)$/)) {
    update(parseInt(m[1], 10) - 1);
  } else {
    update(0);
  }

  d3.select('body').on('keydown', function(event) {
    var newSlide;
    switch (event.keyCode) {
      case 40:
      case 34:
      case 39:
        newSlide = event.metaKey ? Infinity : slide + 1;
        break;
      case 38:
      case 33:
      case 37:
        newSlide = event.metaKey ? 0 : slide - 1;
        break;
      case 32:
        newSlide = event.shiftKey ? slide - 1 : slide + 1;
        break;
      default:
        return;
    }
    update(newSlide);
    event.preventDefault();
  });

  window.onhashchange = function(event) {
    var newSlide = parseInt(event.newURL.split("#")[1]) - 1;
    if (newSlide > 0) {
      update(newSlide);
    }
  }

  var toc_index = [3, 4, 6, 8, 10, 11, 12, 
                   15, 16, 17, 18, 20, 24, 27, 31, 34,
                   35, 36, 38, 43, 46, 48, 50, 52, 
                   53, 54, 55, 56, 57, 58, 59, 60, 
                   1, 1, 1, 1, 1, 1, 1, 1, 1, 1];

  d3.selectAll('li')
    .on('click', function (d, i) {
          update(toc_index[i]);
    });
})();
