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
      if @has_title
        build_string(string)
      else
        raise ConstractError.new("You must call make_title method first.")
      end
    end

    def make_items(items)
      if @has_title
        build_items(items)
      else
        raise ConstractError.new("You must call make_title method first.")
      end
    end

    def close
      if @has_title
        build_close
      else
        raise ConstractError.new("You must call make_title method first.")
      end
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
