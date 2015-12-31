var fs = require('fs');
var http = require('http');

var weatherAPI = require('./Pancakes.materials/Templates/Pancakes/weather-api');

function getWeatherJSON(cb) {
  http.get({
    hostname: weatherAPI.HOSTNAME,
    path: weatherAPI.makePath()
  }, function(res) {
    if (res.statusCode !== 200)
      cb(new Error("expected status 200 but got " + res.statusCode));

    var chunks = [];

    res.on('data', function(chunk) {
      chunks.push(chunk);
    });

    res.on('end', function() {
      var data = Buffer.concat(chunks);
      cb(null, JSON.parse(data.toString('ascii')));
    });
  });
}

if (!module.parent) {
  getWeatherJSON(function(err, weather) {
    if (err) throw err;

    var filename = weatherAPI.FILENAME + '.glkdata';
    fs.writeFileSync(__dirname + '/' + filename,
                     weatherAPI.createGlkdataText(weather));
    console.log('wrote', filename);
  });
}
