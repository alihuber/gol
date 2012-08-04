# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name         = "gol"
  s.version      = "0.2.1" # Increased due to minor typos
  s.authors      = "Alexander Huber"
  s.email        = "alih83@gmx.de"
  s.homepage     = "https://github.com/alihuber/gol"
  s.summary      = "An implementation of Conway's Game of Life"
  s.description  = "gol lets one start random games of Game of Life with chooseable params like grid size, speed, duration and objects."

  s.files        = Dir['lib/**/*.rb'] + Dir['bin/*']
  s.executables  = 'gol'
  s.require_path = 'lib'
end
