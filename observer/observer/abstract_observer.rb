module Observer
  class AbstractObserver
    def update
      raise NotImplementedError, "#{self.class}##{__method__} must be implemented"
    end
  end
end
