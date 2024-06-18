module Support
  class Abstract
    attr_reader :name
    attr_accessor :next_support

    def initialize(name:, next_support: nil)
      @name = name
      @next_support = next_support
    end

    def support(trouble)
      if (resolve(trouble))
        done(trouble)
      elsif (has_next)
        next_support.support(trouble)
      else
        fail(trouble)
      end
    end

    def has_next
      !!next_support
    end

    def resolve(trouble)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def done(trouble)
      puts "id:#{trouble.number} is resolved by #{name}."
    end

    def fail(trouble)
      puts "id:#{trouble.number} cannot be resolved by #{name}."
    end
  end
end
