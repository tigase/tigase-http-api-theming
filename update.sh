#/bin/sh

# script intended to update current assets with the latest version of bootstrap

# requirements: npm, grunt, less
# install npm from repository, e.g. on osx:
#   $ brew install npm
# install grunt:
#   $ npm install -g grunt-cli
# install less:
#   $ npm install -g less




echo "cloning bootstrap repository"
git clone https://github.com/twbs/bootstrap.git bootstrap-upstream

cd bootstrap-upstream
npm install
grunt dist
cp dist/js/bootstrap.min.js ../assets/js/bootstrap.min.js
cd ..


echo "regenerating bootstrap css using custom-boostrap lessc"
lessc -x --verbose assets/less/custom-bootstrap.less assets/css/bootstrap.css


