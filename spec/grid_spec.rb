require_relative '../grid'

describe Gol::Grid do
  let(:grid) { Gol::Grid.new(5) }

  it "has cells" do
    (grid.respond_to? :cells).should be true
  end


  its "cells should be an Array" do
    grid.cells.class.should be Array
  end

  its "number of cells should be size x size" do
    grid.cells.size.should be 25
  end

  it "should be able to yield cells" do
    (grid.respond_to? :each).should be true
  end

  it "should be able to return a specific cell" do
    (grid.respond_to? :get_cell).should be true
    cell = grid.get_cell(2, 2)
    cell.x.should be 2
    cell.y.should be 2
  end

  it "should be able to return the cell above a cell" do
    (grid.respond_to? :get_cell_above).should be true
    cell = grid.get_cell_above(2, 2)
    cell.x.should be 2
    cell.y.should be 1
  end

  it "should be able to return the cell above a cell in an unlimited grid" do
    cell = grid.get_cell_above(3, 1)
    cell.x.should be 3
    cell.y.should be 5
  end

  it "should be able to return the cell left above a cell" do
    (grid.respond_to? :get_cell_left_above).should be true
    cell = grid.get_cell_left_above(2, 2)
    cell.x.should be 1
    cell.y.should be 1

    cell = grid.get_cell_left_above(5, 5)
    cell.x.should be 4
    cell.y.should be 4

    cell = grid.get_cell_left_above(2, 4)
    cell.x.should be 1
    cell.y.should be 3
  end


  it "should be able to return the cell left above a cell on an unlimited grid" do
    cell = grid.get_cell_left_above(1, 1)
    cell.x.should be 5
    cell.y.should be 5
    cell = grid.get_cell_left_above(2, 1)
    cell.x.should be 1
    cell.y.should be 5
    cell = grid.get_cell_left_above(3, 1)
    cell.x.should be 2
    cell.y.should be 5
    cell = grid.get_cell_left_above(4, 1)
    cell.x.should be 3
    cell.y.should be 5
    cell = grid.get_cell_left_above(5, 1)
    cell.x.should be 4
    cell.y.should be 5

    cell = grid.get_cell_left_above(1, 2)
    cell.x.should be 5
    cell.y.should be 1
    cell = grid.get_cell_left_above(1, 3)
    cell.x.should be 5
    cell.y.should be 2
    cell = grid.get_cell_left_above(1, 4)
    cell.x.should be 5
    cell.y.should be 3
    cell = grid.get_cell_left_above(1, 5)
    cell.x.should be 5
    cell.y.should be 4
  end


  it "should be able to return the cell right above a cell" do
    (grid.respond_to? :get_cell_right_above).should be true
    cell = grid.get_cell_right_above(2, 2)
    cell.x.should be 3
    cell.y.should be 1

    cell = grid.get_cell_right_above(4, 4)
    cell.x.should be 5
    cell.y.should be 3

    cell = grid.get_cell_right_above(2, 4)
    cell.x.should be 3
    cell.y.should be 3
  end



  it "should be able to return the cell left above a cell on an unlimited grid" do
    cell = grid.get_cell_right_above(5, 1)
    cell.x.should be 1
    cell.y.should be 5
    cell = grid.get_cell_right_above(4, 1)
    cell.x.should be 5
    cell.y.should be 5
    cell = grid.get_cell_right_above(3, 1)
    cell.x.should be 4
    cell.y.should be 5
    cell = grid.get_cell_right_above(2, 1)
    cell.x.should be 3
    cell.y.should be 5
    cell = grid.get_cell_right_above(1, 1)
    cell.x.should be 2
    cell.y.should be 5

    cell = grid.get_cell_right_above(5, 2)
    cell.x.should be 1
    cell.y.should be 1
    cell = grid.get_cell_right_above(5, 3)
    cell.x.should be 1
    cell.y.should be 2
    cell = grid.get_cell_right_above(5, 4)
    cell.x.should be 1
    cell.y.should be 3
    cell = grid.get_cell_right_above(5, 5)
    cell.x.should be 1
    cell.y.should be 4
  end


  it "should be able to return the cell left of a cell" do
    (grid.respond_to? :get_left_cell).should be true
    cell = grid.get_left_cell(2, 2)
    cell.x.should be 1
    cell.y.should be 2
  end

  it "should be able to return the cell left of a cell in an unlimited grid" do
    cell = grid.get_left_cell(1, 4)
    cell.x.should be 5
    cell.y.should be 4
  end


  it "should be able to return the cell right of a cell" do
    (grid.respond_to? :get_right_cell).should be true
    cell = grid.get_right_cell(2, 2)
    cell.x.should be 3
    cell.y.should be 2
  end

  it "should be able to return the cell right of a cell in an unlimited grid" do
    cell = grid.get_right_cell(5, 2)
    cell.x.should be 1
    cell.y.should be 2
  end


  it "should be able to return the cell left below a cell" do
    (grid.respond_to? :get_cell_left_below).should be true
    cell = grid.get_cell_left_below(2, 2)
    cell.x.should be 1
    cell.y.should be 3

    cell = grid.get_cell_left_below(4, 4)
    cell.x.should be 3
    cell.y.should be 5

    cell = grid.get_cell_left_below(2, 4)
    cell.x.should be 1
    cell.y.should be 5
  end

  it "should be able to return the cell left below a cell on an unlimited grid" do
    cell = grid.get_cell_left_below(1, 5)
    cell.x.should be 5
    cell.y.should be 1
    cell = grid.get_cell_left_below(1, 4)
    cell.x.should be 5
    cell.y.should be 5
    cell = grid.get_cell_left_below(1, 3)
    cell.x.should be 5
    cell.y.should be 4
    cell = grid.get_cell_left_below(1, 2)
    cell.x.should be 5
    cell.y.should be 3
    cell = grid.get_cell_left_below(1, 1)
    cell.x.should be 5
    cell.y.should be 2

    cell = grid.get_cell_left_below(2, 5)
    cell.x.should be 1
    cell.y.should be 1
    cell = grid.get_cell_left_below(3, 5)
    cell.x.should be 2
    cell.y.should be 1
    cell = grid.get_cell_left_below(4, 5)
    cell.x.should be 3
    cell.y.should be 1
    cell = grid.get_cell_left_below(5, 5)
    cell.x.should be 4
    cell.y.should be 1
  end


  it "should be able to return the cell below a cell" do
    (grid.respond_to? :get_cell_below).should be true
    cell = grid.get_cell_below(2, 2)
    cell.x.should be 2
    cell.y.should be 3
  end

  it "should be able to return the cell below a cell in an unlimited grid" do
    cell = grid.get_cell_below(3, 5)
    cell.x.should be 3
    cell.y.should be 1
  end


  it "should be able to return the cell right below a cell" do
    (grid.respond_to? :get_cell_right_below).should be true
    cell = grid.get_cell_right_below(2, 2)
    cell.x.should be 3
    cell.y.should be 3

    cell = grid.get_cell_right_below(4, 4)
    cell.x.should be 5
    cell.y.should be 5

    cell = grid.get_cell_right_below(2, 4)
    cell.x.should be 3
    cell.y.should be 5
  end

  it "should be able to return the cell right below a cell on an unlimited grid" do
    cell = grid.get_cell_right_below(5, 5)
    cell.x.should be 1
    cell.y.should be 1
    cell = grid.get_cell_right_below(4, 5)
    cell.x.should be 5
    cell.y.should be 1
    cell = grid.get_cell_right_below(3, 5)
    cell.x.should be 4
    cell.y.should be 1
    cell = grid.get_cell_right_below(2, 5)
    cell.x.should be 3
    cell.y.should be 1
    cell = grid.get_cell_right_below(1, 5)
    cell.x.should be 2
    cell.y.should be 1

    cell = grid.get_cell_right_below(5, 4)
    cell.x.should be 1
    cell.y.should be 5
    cell = grid.get_cell_right_below(5, 3)
    cell.x.should be 1
    cell.y.should be 4
    cell = grid.get_cell_right_below(5, 2)
    cell.x.should be 1
    cell.y.should be 3
    cell = grid.get_cell_right_below(5, 1)
    cell.x.should be 1
    cell.y.should be 2
  end

  it "should be able to get all neighbours of a cell" do
    (grid.respond_to? :get_neighbours).should be true
    cell = grid.get_cell(2, 2)
    neighbours = grid.get_neighbours(cell)
    neighbours.size.should be 8
    neighbours.first.x.should be 1
    neighbours.first.y.should be 1

    neighbours[1].x.should be 2
    neighbours[1].y.should be 1

    neighbours[2].x.should be 3
    neighbours[2].y.should be 1

    neighbours[3].x.should be 1
    neighbours[3].y.should be 2

    neighbours[4].x.should be 3
    neighbours[4].y.should be 2

    neighbours[5].x.should be 1
    neighbours[5].y.should be 3

    neighbours[6].x.should be 2
    neighbours[6].y.should be 3

    neighbours[7].x.should be 3
    neighbours[7].y.should be 3
  end


  it "should be able to get all neighbours of a cell on an unlimited grid" do
    cell = grid.get_cell(5, 5)
    neighbours = grid.get_neighbours(cell)
    neighbours.size.should be 8
    # upper left
    neighbours.first.x.should be 4
    neighbours.first.y.should be 4

    # upper
    neighbours[1].x.should be 5
    neighbours[1].y.should be 4

    # upper right
    neighbours[2].x.should be 1
    neighbours[2].y.should be 4

    # left
    neighbours[3].x.should be 4
    neighbours[3].y.should be 5

    # right
    neighbours[4].x.should be 1
    neighbours[4].y.should be 5

    # lower left
    neighbours[5].x.should be 4
    neighbours[5].y.should be 1

    # below
    neighbours[6].x.should be 5
    neighbours[6].y.should be 1

    # lower right
    neighbours[7].x.should be 1
    neighbours[7].y.should be 1
  end

  it "should be able to count living neighbours of a cell" do
    (grid.respond_to? :count_living_neighbours).should be true
    cell = grid.get_cell(2, 2)
    grid.get_cell(1, 1).alive = true
    grid.get_cell(2, 1).alive = true
    grid.get_cell(3, 3).alive = true
    grid.count_living_neighbours(cell).should be 3
  end

  it "should apply rule one (3 living neighbours == will be alive)" do
    (grid.respond_to? :check_survival).should be true
    cell = grid.get_cell(2, 2)
    grid.get_cell(1, 1).alive = true
    grid.get_cell(2, 1).alive = true
    grid.get_cell(3, 3).alive = true
    grid.check_survival(cell)
    cell.will_live?.should be true
  end

  it "should apply rule two (less than 2 living neighbours == will die)" do
    cell = grid.get_cell(2, 2)
    cell.alive = true
    grid.get_cell(1, 1).alive = true
    grid.check_survival(cell)
    cell.will_live?.should be false
  end

  it "should apply rule three (2 or 3 living neighbours == will live)" do
    cell = grid.get_cell(2, 2)
    cell.alive = true
    grid.get_cell(1, 1).alive = true
    grid.get_cell(2, 1).alive = true
    grid.check_survival(cell)
    cell.will_live?.should be true

    grid.get_cell(3, 3).alive = true
    grid.check_survival(cell)
    cell.will_live?.should be true
  end

  it "should apply rule four (more than 3 neighbours == will die)" do
    cell = grid.get_cell(2, 2)
    grid.get_cell(1, 1).alive = true
    grid.get_cell(2, 1).alive = true
    grid.get_cell(3, 3).alive = true
    grid.get_cell(1, 2).alive = true
    grid.check_survival(cell)
    cell.will_live?.should be false
  end


  # it "should be able to check whether a cell will survive" do
    # (grid.respond_to? :check_survival).should be true
  # end

end
