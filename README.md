# Craft Standard Build

## Setup

* DDEV config update
  * Update name in `.ddev/config.yaml` (this will be used to generate the ddev url - and is also used for the frontend Browsersync integration)
  * If you don't have NFS mounted, you'll also need to update `nfs_mount_enabled` to false
* Run `setup.sh` - this is automating the following:
  * Pulling the [frontend repository files](https://github.com/mightyfernandez/frontend) as a submodule
  * Moving these frontend files to the root so that we can run commands from the root
  * Removing the Craft and frontend `.git` directories from the project directory
  * Installing composer dependencies for Craft and node modules for frontend
  * Creating directories needed for Craft that are created during a normal Craft installation but are excluded within the `.gitignore`
  * Running ddev and importing the db with preconfigured sections and content
* Update site url in `.env` (FUTURE TODO: pull this from the .ddev/config.yaml file in the setup process)


## Development

* Once everything is installed, run `npm start` to start the frontend compile processes
* For SVG icons that need to be compiled for use with gulpicon, run `gulp icons` at the root

## Credentials

*IMPORTANT!* change these credentials before pushing to a remote environment

* Username: admin
* Password: testtest
