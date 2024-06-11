module Factory
  class Abstract
    def create(owner)
      create_product(owner).tap do |product|
        register_product(product)
      end
    end

    def create_product(owner)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def register_product(product)
      raise NotImplementedError.new("You must implement #{self.class}##{__metho__}")
    end
  end
end
