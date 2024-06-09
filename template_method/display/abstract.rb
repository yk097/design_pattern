module Display
  class Abstract
    def display
      start
      show
      finish
    end

    def start
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def show
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def finish
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end
