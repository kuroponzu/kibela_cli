# frozen_string_literal: true

require 'thor'
require 'kibela_cli'

module KibelaCli
  class CLI < Thor
    desc 'get_note', 'Get target note.'
    def get_note
      puts "get_note"
    end
  end
end
