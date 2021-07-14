#!/usr/bin/env ruby
# coding:utf-8

SCRIPT_PATH = 'scripts/'
@all_help = ''

Dir.foreach(SCRIPT_PATH) do |filename|
  next if filename.start_with?('.')

  File.open(SCRIPT_PATH + filename, 'r') do |f|
    contents = f.read
    contents.each_line do |line|
      @all_help << line.sub(/^#\s*/, '') if line.match(/^#\s*hubot/)
    end
  end
end

puts @all_help
