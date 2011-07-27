# twim

`twim` lets you post status updates to your Twitter from Vim.

![screenshot](https://github.com/danchoi/twim/raw/master/screenshot.png)


# Installation

    gem install twim

# Setup

Before using twim, you must first get a Twitter API key and authorize
the `twurl` command (note that this is a different command from `twim`)
to access your Twitter account. Type 

    twurl -T

for instructions.


# Usage

    twim [args]

This will invoke vim, where you can compose your tweet. Look at the Vim
status line to see how many characters you have left before reaching the
character limit.

If you can pass in arguments, they will be pre-inserted in to the tweet text.

To post the tweet, exit vim with `:wq`. To abort, exit with `:q!`. 

# Turning URLs into TinyURLs

If you paste or type a long URL, `twim` can condense it into a
TinyURL. Just put the cursor somewhere on the URL and type 

    <Leader>,
    
in normal mode. (That's the leader key followed by a comma). Note that
this feature assumes you have `curl` installed on your system.


# About

If you like `twim`, try [twail][twail].

[twail]:https://github.com/danchoi/twail

Twim is really just a convenience wrapper around the awesome [twurl][twurl]
program.

[twurl]:https://github.com/marcel/twurl

My name is Daniel Choi. I'm a big fan of Vim and the command line. You can
follow me on Twitter at <http://twitter.com/danchoi>.


