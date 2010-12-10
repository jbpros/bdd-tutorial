# bdd-tutorial

Yet another BDD tutorial. This is a skeleton to ease the setup pain. But now *YOU* have to figure what to put on it.

# What you need

* git
* rvm

# Setup

1. rvm install ruby-1.9.2-p0 # only if not present in your RVM rubies
2. rvm use 1.9.2-p0
3. rvm gemset create bdd-tutorial
4. git clone git://github.com/jbpros/bdd-tutorial.git
5. cd bdd-tutorial
6. gem install bundler
7. bundle install

# Tweak your setup

## RVM

Have RVM automatically load your gemset and the correct version of ruby for your project:

### .rvmrc

    rvm ruby-1.9.2-p0@bdd-tutorial
    echo "You're now in the BDD tutorial ruby environment"

## Autotest

to use growl on Mac OSX:

Install the growl gem:

    $ gem install autotest-growl
    
### .autotest

    require 'autotest/growl'

You'll have to run autotest with the following command:

    $ bundle exec autotest
