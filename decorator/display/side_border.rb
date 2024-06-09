module Display
  class SideBorder < AbstractBorder
    def initialize(display, char: '|')
      super(display)
      @char = char
    end

    def get_columns
      display.get_columns + 2
    end

    def get_rows
      display.get_rows
    end

    def get_row(number)
      "#{@char}#{display.get_row(number)}#{@char}"
    end
  end
end
