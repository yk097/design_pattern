module Factory
  class IdCardFactory < Abstract

    attr_accessor :owners

    def initialize
      @owners = []
    end

    def create_product(owner)
      Product::IdCard.new(owner)
    end

    def register_product(product)
      @owners << product.owner
    end
  end
end
