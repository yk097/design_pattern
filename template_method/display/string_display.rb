module Display
  class StringDisplay < Abstract
    def initialize(string)
      @string = string
    end

    def start
      puts line
    end

    def show
      puts "|#{@string}|"
    end

    def finish
      puts line
    end

    private

    def line
      "+#{'-' * @string.encode('EucJP').bytesize}+"
    end
  end
end
