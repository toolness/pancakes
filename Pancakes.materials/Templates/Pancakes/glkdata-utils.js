// This is a collection of utility functions that facilitate the writing
// of glkdata content to GlkOte's "virtual filesystem" stored in
// window.localStorage. It relies on dialog.js, which is part of GlkOte and
// is included in Quixe:
//
// https://github.com/erkyrath/glkote/blob/master/dialog.js

var GlkdataUtils = (function() {
  var self = {};

  function arrayToString(arr) {
    return arr.map(function(ord) {
      return String.fromCharCode(ord);
    }).join('');
  }

  function stringToArray(str) {
    var arr = [];

    for (var i = 0; i < str.length; i++) {
      arr.push(str.charCodeAt(i));
    }

    return arr;
  }

  self.readTextFile = function readTextFile(filename) {
    var ref = Dialog.file_construct_ref(filename, 'data', '');

    return arrayToString(Dialog.file_read(ref));
  };

  self.writeTextFile = function writeTextFile(filename, str) {
    var ref = Dialog.file_construct_ref(filename, 'data', '');

    Dialog.file_write(ref, stringToArray(str));
  };

  self.removeFile = function removeFile(filename) {
    var ref = Dialog.file_construct_ref(filename, 'data', '');

    Dialog.file_remove_ref(ref);
  };

  return self;
})();
