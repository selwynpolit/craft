# Craft Standard Build

## Setup

* Update name in `.ddev/config.yaml` (this will be used to generate the ddev url - and is also used for the frontend Browsersync integration)
* Run `setup.sh` - this is automating the following:
  * Pulling the frontend repository files as a submodule
  * Moving these frontend files to the root so that we can run commands from the root
  * Removing the Craft and frontend `.git` directories from the project directory
  * Installing composer dependencies for Craft and node modules for frontend
  * Creating directories needed for Craft that are created during a normal Craft installation but are excluded within the `.gitignore`
  * Running ddev and importing the db with preconfigured sections and content

## Development

* Once everything is installed, run `npm start` to start the frontend compile processes
* For SVG icons that need to be compiled for use with gulpicon, run `gulp icons` at the root
