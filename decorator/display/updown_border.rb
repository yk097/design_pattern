module Display
  class UpdownBorder < AbstractBorder
    def initialize(display, char: '-')
      super(display)
      @char = char
    end

    def get_columns
      display.get_columns
    end

    def get_rows
      display.get_rows + 2
    end

    def get_row(number)
      if number.zero? || number == get_rows - 1
        @char * display.get_columns
      else
        display.get_row(number - 1)
      end
    end
  end
end
