gol
===

A neat engine/implementation of John Horton Conway's Game of Life.


Usage
-----

Right now you have to edit game.rb and add what you want. It's all very basic:

`g = Gol::Game.new(25)`

will give you a 25x25 cells grid, and

`g.turn_alive_random_cells`

will do as ist says. A step is performed via the 'step' method, so you could do

`100.times { g.step }`

I included a glider so far, which can be activated like so:

`g.glider`


Roadmap
-------

*   gemify
*   add something like optparse for processing command-line arguments for game size, speed, objects and duration
