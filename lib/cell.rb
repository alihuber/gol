module Gol
  class Cell
    attr_accessor :alive, :will_live, :x, :y

    def initialize
      @alive = false
      @will_live = false
    end

    def alive?
      @alive
    end

    def kill
      @alive = false
    end

    def set_alive
      @alive = true
    end

    def will_live?
      @will_live
    end

  end
end
