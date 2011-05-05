# twim

`twim` lets you post status updates to your Twitter from Vim.

# Installation

    gem install twim

# Setup

Before using twim, you must first get a Twitter API key and authorize
the `twurl` command (note that this is a different command from `twim`)
to access your Twitter account. Type 

    twurl -T

for instructions.


# Usage

    twim 

This will invoke vim, where you can compose your tweet. Look at the Vim status
line to see how many characters you have left before reaching the character
limit.

If you paste or type in a long URL, `twim` can convert it into a TinyURL. Just
put the cursor somewhere on the URL and type `<Leader>,` (the leader key
followed by a comma). Note that this feature assumes you have `curl` install on
your system.

# About

Twim is really just a convenience wrapper around the awesome [twurl][twurl]
program.

[twurl]:https://github.com/marcel/twurl

My name is Daniel Choi. I'm a big fan of Vim and the command line. You can
follow me on Twitter at <http://twitter.com/danchoi>.


