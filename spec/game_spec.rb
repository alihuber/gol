require_relative '../game'

describe Gol::Game do
  let(:game) { Gol::Game.new(5) }
  it "has a grid" do
    (game.respond_to? :grid).should be true
  end

  it "should have a print method" do
    (game.respond_to? :print_game).should be true
  end


  it "should be able to turn random cells alive" do
    (game.respond_to? :turn_alive_random_cells).should be true
  end


  it "should be able to produce a glider" do
    (game.respond_to? :glider).should be true
  end


  it "should be able to perform a step and apply the rules" do
    (game.respond_to? :step).should be true
    game.grid.get_cell(2, 2).alive = true
    game.step
    game.grid.get_cell(2, 2).alive?.should be false
  end


end
