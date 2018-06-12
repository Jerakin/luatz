# luatz

A lua library for time and date manipulation.

Features include:

  - Normalisation of broken down date objects
	  - allows for complex time/date manipulation logic e.g. "What day is it in 2 days, 5 hours from now?"
  - Conversion between locations (time zones) using your local [zoneinfo](https://www.iana.org/time-zones) database.
  - `strftime` style formatting



## Documentation

Documentation can be found in the `doc` sub-directory.

An online version can be found at https://daurnimator.github.io/luatz/

# Defold

The project forked from https://github.com/daurnimator/luatz have been adapted to be used as a Defold library.

## Installation

You can use luatz in your own project by adding this project as a [Defold library dependency](http://www.defold.com/manuals/libraries/). Open your game.project file and in the dependencies field under project add:

	https://github.com/Jerakin/luatz/archive/master.zip