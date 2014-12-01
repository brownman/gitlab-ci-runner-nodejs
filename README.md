[![Build Status](https://travis-ci.org/brownman/gitlab-ci-runner-nodejs.svg?branch=master)](https://travis-ci.org/brownman/gitlab-ci-runner-nodejs)
[![wercker status](https://app.wercker.com/status/d8df76c77d9f43841e9cbc2407f8a101/s "wercker status")](https://app.wercker.com/project/bykey/d8df76c77d9f43841e9cbc2407f8a101)
[![Circle CI](https://circleci.com/gh/brownman/gitlab-ci-runner-nodejs.svg?style=svg)](https://circleci.com/gh/brownman/gitlab-ci-runner-nodejs)
[![Build Status](https://snap-ci.com/brownman/gitlab-ci-runner-nodejs/branch/master/build_image)](https://snap-ci.com/brownman/gitlab-ci-runner-nodejs/branch/master)


structure
====
 
 ```bash
 MEAN/   #install mean using npm + scaffold new dir + [[[  DO WHATEVER WE NEED TO TEST OUR PACKAGE-REPOSITORY]]]
 SH/     #install ubuntu machine packages + ruby + nodejs
 DKR/    #docker only:  Exposing ports 
 GITLAB/ #c.i runner:   Clone the repo + Use ruby to run it
 ```


gitlab-ci-runner-nodejs
=======================

Runner for gitlab-ci **using docker** with a fresh node.js, npm and phantom.js install


links
----
- [travis + docker](https://github.com/lukecyca/travis-docker-example)
- [docker Makefile](https://github.com/sameersbn/docker-gitlab-ci/edit/master/Makefile)
- [rm code from Dockerfile](https://github.com/sameersbn/docker-gitlab-ci-runner)
