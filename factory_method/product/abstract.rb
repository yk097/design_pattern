module Product
  class Abstract
    def use
      raise NotImplementedError.new("You must implement #{self.class}##{__metho__}")
    end
  end
end
