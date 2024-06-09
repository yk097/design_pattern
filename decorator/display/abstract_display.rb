module Display
  class AbstractDisplay
    def get_columns
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def get_rows
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def get_row(number)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def show
      get_rows.times { |i| puts get_row(i) }
    end
  end
end
