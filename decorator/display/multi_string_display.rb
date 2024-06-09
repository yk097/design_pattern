module Display
  class MultiStringDisplay < AbstractDisplay
    def initialize
      @strings = []
    end

    def add(string)
      @strings << StringDisplay.new(string)
    end

    def get_columns
      @strings.map(&:get_columns).max
    end

    def get_rows
      @strings.size
    end

    def get_row(number)
      string = @strings[number]
      padding = get_columns - string.get_columns
      if padding.positive?
        string.get_row(0) + ' ' * padding
      else
        string.get_row(0)
      end
    end
  end
end
