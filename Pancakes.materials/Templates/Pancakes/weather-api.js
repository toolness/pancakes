// This is a simple browser script/nodeJS module that facilitates the
// reading of openweathermap.org API data and its integration into
// works of interactive fiction.

(function() {
  var IS_NODE_JS = (typeof(module) !== 'undefined');
  var self = {
    FILENAME: 'weather',
    PROJECTNAME: 'WEATHER-API',
    HOSTNAME: 'api.openweathermap.org',
    APPID: '1b9137c2a18a6a06df9a2c07ab7e019b',
    LOC: 'New York,NY',
  };

  self.makePath = function() {
    return '/data/2.5/weather?q=' + encodeURIComponent(self.LOC) +
           '&units=imperial&APPID=' + self.APPID;
  };

  self.createGlkdataText = function(weather) {
    var cloudCover = weather.clouds.all;
    var textDesc = 'clear';

    if (cloudCover >= 33 && cloudCover <= 66) {
      textDesc = 'partly cloudy';
    } else if (cloudCover > 66) {
      textDesc = 'mostly cloudy';
    }

    return '* //' + self.PROJECTNAME + '// ' + self.FILENAME + '\n' +
           textDesc;
  };

  // Write the weather data into GlkOte's "virtual filesystem" so
  // browser-based IF can read it.
  self.createWeatherGlkdata = function() {
    if (IS_NODE_JS)
      throw new Error("This function can only be called from the browser.");

    var req = new XMLHttpRequest();
    req.open('GET', 'http://' + self.HOSTNAME + self.makePath());
    req.onload = function() {
      var text = self.createGlkdataText(JSON.parse(req.responseText));
      GlkdataUtils.writeTextFile(self.FILENAME, text);
      console.log("Wrote " + self.FILENAME + " glkdata.");
    };
    req.send();
  };

  if (IS_NODE_JS) {
    module.exports = self;
  } else {
    window.weatherAPI = self;
    window.addEventListener("load", self.createWeatherGlkdata, false);
  }
})();
