require_relative 'grid'

module Gol
  class Game
    attr_accessor :grid, :pause

    def initialize(size, pause)
      @pause = pause
      @grid = Grid.new(size)
    end


    def print_game
      puts
      str = ""
      @grid.each do |cell|
        if cell.x == 1 and cell.alive?
          str += "|O|"
        elsif cell.x == 1 and !cell.alive?
          str += "|_|"
        elsif cell.x == grid.size and cell.alive?
          str += "O|\n"
        elsif cell.x == grid.size and !cell.alive?
          str += "_|\n"
        elsif cell.alive?
          str += "O|"
        else
          str += "_|"
        end
      end
      puts str
    end


    def step
      print_game
      @grid.cells.each do |cell|
        @grid.check_survival(cell)
      end
      @grid.cells.each do |cell|
        if cell.will_live?
          cell.set_alive
        else
          cell.kill
        end
      end
      print_game
      sleep @pause
    end



    def turn_alive_random_cells
      max_cells = rand(@grid.cells.size)
      cells_to_live = []
      max_cells.times do
        cells_to_live << @grid.cells.sample
      end
      cells_to_live.each do |c|
        c.set_alive
      end
    end

    def glider
      @grid.get_cell(6, 5).set_alive
      @grid.get_cell(7, 6).set_alive
      @grid.get_cell(5, 7).set_alive
      @grid.get_cell(6, 7).set_alive
      @grid.get_cell(7, 7).set_alive
    end

  end
end
