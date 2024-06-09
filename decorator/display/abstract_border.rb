module Display
  class AbstractBorder < AbstractDisplay
    attr_reader :display

    def initialize(display)
      @display = display
    end
  end
end
