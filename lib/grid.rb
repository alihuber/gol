require_relative 'cell'

module Gol
  class Grid
    attr_accessor :cells, :size

    def initialize(size)
      @size = size
      @cells = Array.new
      # gives us something like [[1, 1], [1, 2], [1, 3], ...]
      coordinates = (1..size).to_a.product((1..size).to_a)
      coordinates.each do |co|
        c = Cell.new
        # we want the rows first, better for printing
        c.x = co[1]
        c.y = co[0]
        @cells << c
      end
    end

    def each
      @cells.each do |c|
        yield c
      end
    end

    def get_cell(x, y)
      correct_cell = []
      @cells.select do |cell|
        correct_cell << cell if (cell.x == x and cell.y == y)
      end
      correct_cell.first
    end

    def get_neighbours(cell)
      x = cell.x
      y = cell.y
      neighbours = []
      neighbours << get_cell_left_above(x, y)
      neighbours << get_cell_above(x, y)
      neighbours << get_cell_right_above(x, y)
      neighbours << get_left_cell(x, y)
      neighbours << get_right_cell(x, y)
      neighbours << get_cell_left_below(x, y)
      neighbours << get_cell_below(x, y)
      neighbours << get_cell_right_below(x, y)
    end

    def count_living_neighbours(cell)
      neighbours = get_neighbours(cell)
      count = 0
      neighbours.each do |cell|
        count += 1 if cell.alive?
      end
      count
    end

    def check_survival(cell)
      c = count_living_neighbours(cell)
      if !cell.alive? and c == 3
        cell.will_live = true
      elsif cell.alive? and c < 2
        cell.will_live = false
      elsif cell.alive? and (c == 2 or c == 3)
         cell.will_live = true
      elsif cell.alive? and c > 3
        cell.will_live = false
      end
    end



    def get_cell_above(x, y)
      if y == 1
        get_cell(x, @size)
      else
        get_cell(x, y - 1)
      end
    end

    def get_cell_left_above(x, y)
      if x == 1 and y == 1
        get_cell(@size, @size)
      elsif x == 1
        get_cell(@size, y - 1)
      elsif y == 1
        get_cell(x - 1, @size)
      else
        get_cell(x - 1, y - 1)
      end
    end

    def get_cell_right_above(x, y)
      if x == @size and y == 1
        get_cell(1, @size)
      elsif y == 1
        get_cell(x + 1, @size)
      elsif x == @size
        get_cell(1, y - 1)
      else
        get_cell(x + 1, y - 1)
      end
    end


    def get_left_cell(x, y)
      if x == 1
        get_cell(@size, y)
      else
        get_cell(x - 1, y)
      end
    end

    def get_right_cell(x, y)
      if x == @size
        get_cell(1, y)
      else
        get_cell(x + 1, y)
      end
    end


    def get_cell_left_below(x, y)
      if x == 1 and y == @size
        get_cell(@size, 1)
      elsif x == 1
        get_cell(@size, y + 1)
      elsif y == @size
        get_cell(x - 1, 1)
      else
        get_cell(x - 1, y + 1)
      end
    end


    def get_cell_below(x, y)
      if y == @size
        get_cell(x, 1)
      else
        get_cell(x, y + 1)
      end
    end


    def get_cell_right_below(x, y)
      if x == @size and y == @size
        get_cell(1, 1)
      elsif y == @size
        get_cell(x + 1, 1)
      elsif x == @size
        get_cell(1, y + 1)
      else
        get_cell(x + 1, y + 1)
      end
    end


  end
end
