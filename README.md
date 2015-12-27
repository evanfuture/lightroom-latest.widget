# lightroom-latest.widget

lightroom-latest is an [Übersicht](http://tracesof.net/uebersicht/) widget for displaying the latest Picked photo of a given Keyword from a Lightroom Catalog.

Uses the node module *lr-latest* to do the heavy lifting, and is really just a call to that module and some styling.

prerequisites
=============

You must have installed the lr-latest command:

````javascript
npm install lr-latest -g
````

Which in turn requires a copy of Adobe Photoshop Lightroom to be installed, as well as Imagemagick.  Follow the installation instructions at [https://github.com/evanfuture/lr-latest](https://github.com/evanfuture/lr-latest)

Only been tested on a Mac, running El Capitan, with Node & npm installed via Homebrew, and Lightroom CC 2015.1

setup
=====

To run the widget, add it to your Übersicht widgets folder and edit the index.coffee file to supply your own variables for the keywords, size, and catalog options.

Tweak the styling as necessary.

troubleshooting
===============

1. Make sure you have tagged some photos in your Lightroom Catalog with the keyword(s) you want to use.
2. Make sure you have set the "Picked" flag on at least some of those photos with keywords.
3. Make sure ImageMagick is installed This is best done via Homebrew.  See notes at [lr-latest](https://github.com/evanfuture/lr-latest).
4. Make sure you replace USERNAME in the catalog option with your own username (~/ does not work), or have replaced the entire catalog option with an **absolute** path to the Catalog you want to use.

Anything else, please get in touch, and I'll try to help out.

If anyone has any improvements to make here or in the lr-latest module, please submit a pull-request!