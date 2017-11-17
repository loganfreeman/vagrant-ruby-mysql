#!/bin/bash

RUBY_VERSION=2.2.4
RAILS_VERSION=4.2.6

# key for RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# install the latest stable RVM
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

# install and use Ruby
rvm install "$RUBY_VERSION"
rvm use "$RUBY_VERSION" --default

# install Rails
gem install rails --version "$RAILS_VERSION"
