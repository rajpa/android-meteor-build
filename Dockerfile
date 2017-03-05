FROM beevelop/android-nodejs:latest

RUN curl https://install.meteor.com/ | sh

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24 && 
"echo 'deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/git.list" && apt-get update && apt-get install git

RUN npm install -g cordova
RUN npm install -g mup@latest
RUN npm install -g ssh2
