module Display
  class FullBorder < AbstractBorder
    def get_columns
      display.get_columns + 2
    end

    def get_rows
      display.get_rows + 2
    end

    def get_row(number)
      if number.zero? || number == get_rows - 1
        "+#{'-' * display.get_columns}+"
      else
        "|#{display.get_row(number - 1)}|"
      end
    end
  end
end
