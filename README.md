This is an interactive fiction about making pancakes on a Saturday
morning.

It was written using [Inform 7][] [release 6L38][]. It is possible that it
may not compile on future releases, because the language and extension
support seem to change over time.

If you'd like to read the source code of the story, I recommend
either [viewing the source text online][] or cloning this repository,
downloading the Inform 7 IDE and loading it there.

This story makes use of the [Measured Liquid][] extension by Emily Short.

## Realtime Weather (experimental)

The [OpenWeatherMap API][] can be used to provide realtime weather for
the story to use. Its purpose is purely decorative and doesn't affect
the gameplay; if unavailable, the story falls back to a default weather
configuration.

To use realtime weather from a desktop client or the Inform 7 IDE, you'll
need to run the `create-weather-glkdata.js` script using NodeJS, which
will create a file that the story will read from.

On browsers, realtime weather usage requires no setup, as the
OpenWeatherMap API is used directly from JavaScript.

## License

The two image files `Cover.jpg` and `Small Cover.jpg` are based on a
[photograph of buttermilk pancakes by Kurman Communications, Inc.][photo],
and appear here under a [Creative Commons Attribution 2.0 license][ccby].

The rest of this work is licensed under Public Domain
[CC0 1.0 Universal][cczero].

[Inform 7]: http://inform7.com/
[release 6L38]: http://inform7.com/download/release/6L38/
[viewing the source text online]: http://toolness.github.io/pancakes/Pancakes.materials/Release/source.html
[Measured Liquid]: http://inform7.com/extensions/Emily%20Short/Measured%20Liquid/index.html
[photo]: https://www.flickr.com/photos/kurmanphotos/14136765763
[ccby]: https://creativecommons.org/licenses/by/2.0/
[cczero]: http://creativecommons.org/publicdomain/zero/1.0/
[OpenWeatherMap API]: http://openweathermap.org/api
