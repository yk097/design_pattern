module Support
  class Abstract
    attr_reader :name, :chain

    def initialize(name:)
      @name = name
      @chain = Chain.new
    end

    def support(trouble)
      if (resolve(trouble))
        done(trouble)
      elsif (next_support)
        next_support.support(trouble)
      else
        fail(trouble)
      end
    end

    def next_support
      @chain.next(self)
    end

    def resolve(trouble)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def done(trouble)
      puts "id:#{trouble.number} is resolved by #{name}."
    end

    def fail(trouble)
      puts "id:#{trouble.number} cannot be resolved"
    end
  end
end
