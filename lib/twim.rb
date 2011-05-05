#!/usr/bin/env ruby
require 'twurl'
require 'tempfile'

class Twim
  class << self
    def run
      options = Twurl::CLI.parse_options ["/1/statuses/update.xml"]
      vimscript = File.expand_path '../twim.vim', __FILE__
      f = Tempfile.new('twitter-msg') 
      msg = begin
              system "vim -S %s %s" % [vimscript, f.path]
              f.read
            ensure
              f.close
            end
      msg = msg.strip.gsub(/\s+/, ' ')
      if msg.empty?
        puts "No tweet to post."
        exit
      end
      puts "Posting update (%s characters):" % msg.length
      puts msg
      options.data['status'] = msg
      Twurl::CLI.dispatch options
    end
  end
end

if __FILE__ == $0
  if Twurl::OAuthClient.rcfile.empty?
    puts '-' * 70
    puts "You must first get an API key and authorize twurl to use it."
    puts "Type twurl -T for instructions."
    puts '-' * 70
    exit 1
  end
  Twim.run
end
