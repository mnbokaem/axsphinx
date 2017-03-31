axsphinx - testing
==================

Docker Container for Sphinx, PlantUML and friends.


Build a Docker container that contains the toolchain to build documentation, including
* Sphinx
* TeX packages for PDF generation
* PlantUML
* Sphinx extensions 
* librsvg for SVG conversions
* make - to build the whole documentation

There are no network services provided, instead map a volume with the documentation folder into
the container at `/sphinx`.

The container by default runs `make` in that volume to build your documentation, so it can
be called to build your documentation in the volume without leaving a container around:

`docker run --rm -v /home/mnbokaem/src/some_doc:/sphinx mnbokaem/axsphinx`

Alternatively enter the container and use it interactively

`docker run -t -i -v /home/mnbokaem/src/some_doc:/sphinx mnbokaem/axsphinx /bin/bash`

