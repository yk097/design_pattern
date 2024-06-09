module Display
  class StringDisplay < AbstractDisplay
    def initialize(string)
      @string = string
    end

    def get_columns
      @string.encode('EUC-JP').bytesize
    end

    def get_rows
      1
    end

    def get_row(number)
      number.zero? ? @string : nil
    end
  end
end
