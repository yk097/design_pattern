module Builder
  class Abstract
    def initialize
      @has_title = false
    end

    def make_title(title)
      @has_title = true
      build_title(title)
    end

    def make_string(string)
      raise ConstractError.new("You must call make_title method first.") unless @has_title

      build_string(string)
    end

    def make_items(items)
      raise ConstractError.new("You must call make_title method first.") unless @has_title

      build_items(items)
    end

    def close
      raise ConstractError.new("You must call make_title method first.") unless @has_title

      build_close
    end

    def build_title(title)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def build_string(string)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def build_item(items)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def build_close
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end
