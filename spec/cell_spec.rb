require_relative '../cell'

describe Gol::Cell do
  let(:cell) { Gol::Cell.new }

  it "should know if its alive" do
    (cell.respond_to? :alive?).should be true
  end

  it "should be killable" do
    (cell.respond_to? :kill).should be true
  end

  it "has a x-coordinate" do
    (cell.respond_to? :x).should be true
  end

  it "has a y-coordinate" do
    (cell.respond_to? :y).should be true
  end

  it "should know wheter it will live in the next generation" do
    (cell.respond_to? :will_live).should be true
  end

  it "should be able to be turned alive" do
    (cell.respond_to? :set_alive).should be true
  end

  it "should be dead after creation" do
    cell.alive?.should be false
  end

  it "shouldn't be marked as survivor on creation" do
    cell.will_live?.should be false
  end

  it "should be alive after turned alive" do
    cell.alive?.should be false
    cell.set_alive
    cell.alive?.should be true
  end

  it "should be dead after killing" do
    cell.alive?.should be false
    cell.set_alive
    cell.alive?.should be true
    cell.kill
    cell.alive?.should be false
  end

end
