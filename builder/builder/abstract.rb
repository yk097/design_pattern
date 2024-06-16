module Builder
  class Abstract
    def make_title(title)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def make_string(string)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def make_items(items)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def close
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end
