FROM ruby:2.2.1
MAINTAINER Bart Oleszczyk <bart@primate.co.uk>

# Update system
RUN apt-get -y update -qq

# Install required libraries
RUN apt-get install -y --force-yes \
            build-essential \
            git \
            curl \
            rsync \
            vim \
            zlib1g-dev \
            liblzma-dev \
            patch \
            libpq-dev \
            python-dev \
            python2.7-dev \
            imagemagick \
            libmagickcore-dev \
            libmagickwand-dev \
            mysql-client \
            apt-transport-https 

RUN mkdir -p /vendor/bundle
RUN gem install bundler -v='1.17.3'
WORKDIR /tmp
ADD Gemfile /tmp/Gemfile
ADD Gemfile.lock /tmp/Gemfile.lock
RUN bundle install

WORKDIR /lelc2
ADD . /lelc2

#RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
#RUN apt-get install -y nodejs
#
## YARN
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN apt update -y && apt-get -y install yarn
#RUN /usr/bin/yarn install --pure-lockfile
