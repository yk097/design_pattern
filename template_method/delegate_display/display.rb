require 'forwardable'
module DelegateDisplay
  class Display
    extend Forwardable
    delegate %i[start show finish] => :@display

    def initialize(display)
      @display = display
    end

    def display
      start
      show
      finish
    end
  end
end
