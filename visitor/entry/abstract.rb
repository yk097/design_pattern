module Entry
  class Abstract
    def accept(visitor)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def name
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def size
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def add(entry)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def directory?
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end
