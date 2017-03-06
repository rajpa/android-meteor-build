FROM beevelop/android-nodejs:latest

RUN curl https://install.meteor.com/ | sh

RUN apt-get update && apt-get install -y git
RUN echo y | android update sdk --no-ui --all --filter "extra-android-m2repository"

RUN npm install -g cordova
RUN npm install -g mup@latest
RUN npm install -g ssh2
