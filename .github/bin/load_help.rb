# frozen_string_literal: true
#!/usr/bin/env ruby

SCRIPT_PATH = 'scripts/'
HEADERS = %w[command filename].freeze

# Convert lines of a script into output
class ScriptLineProcessor
  attr_reader :all_help

  def initialize
    @all_help = +make_csv_line(HEADERS)
  end

  def call(line, filename)
    return unless line.match(/^#\s*hubot/)

    command = line.sub(/^#\s*/, '').chomp
    @all_help << make_csv_line([command, filename])
  end

  private

  def make_csv_line(array)
    array.join(',').concat("\n")
  end
end

@processor = ScriptLineProcessor.new

Dir.foreach(SCRIPT_PATH) do |filename|
  next if filename.start_with?('.')

  File.open(SCRIPT_PATH + filename, 'r') do |file|
    file.read.each_line { |line| @processor.call(line, filename) }
  end
end

puts @processor.all_help
