module Generator
  class NumberGenerator
    attr_accessor :observers
    attr_reader :number

    def initialize
      @observers = []
      @number = nil
    end

    def notify
      observers.each do |observer|
        observer.update(self)
      end
    end

    def exec
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end
  end
end
