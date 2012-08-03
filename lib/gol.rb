require 'optparse'
require_relative 'game'

module Gol
  class Starter

    attr_accessor :options
    def initialize
      @objects = [:glider] # TODO: more to come
      @options = {}
    end

    def parse_options
      optparse = OptionParser.new do |opts|
        opts.banner = "Usage: gol [pause] [object] [size] [generations]"

        @options[:pause] = 0.5
        opts.on('-p', '--pause PAUSE', "Sets the sleep time in seconds each step
                                     will take after printing out the game.
                                     Default are 0.5 seconds.") do |time|
                 @options[:pause] = time.to_f
               end


        @options[:object] = nil
        opts.on('-o', '--object OBJECT', "Sets a starting object to begin with.
                                     It will appear on the Screen with no
                                     additional living cells. Options are:
                                        glider"
               ) do |ob|
                 @options[:object] = ob.to_sym
               end


        @options[:size] = 10
        opts.on('-s', '--size SIZE', "Sets the size of the quadratic grid.
                                     Default is a 10x10 grid."
               ) do |s|
                 @options[:size] = s.to_i
               end


        @options[:generations] = 10
        opts.on('-g', '--generations GENERATIONS', "Sets the number of generations to
                                     play with. Default are 10 generations."
               ) do |g|
                 @options[:generations] = g.to_i
               end

        opts.on('-h', '--help', 'Print this help screen') do
          puts opts
          exit
        end
      end # end of option parsing

      optparse.parse!

    end # end parse options


    def main_script
      parse_options
      g = Game.new(@options[:size], @options[:pause])
      if @options[:object].eql? :glider
        g.glider
      else
        g.turn_alive_random_cells
      end
      @options[:generations].times do
        g.step
      end
    end

  end
end

s = Gol::Starter.new
s.main_script
