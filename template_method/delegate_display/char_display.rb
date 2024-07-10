module DelegateDisplay
  class CharDisplay
    include Abstract

    def initialize(char)
      @char = char
    end

    def start
      print '<<'
    end

    def show
      print @char * 5
    end

    def finish
      print ">>\n"
    end
  end
end
