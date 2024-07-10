module DelegateDisplay
  module Abstract
    def start
      raise NotImplementedError, "You must implement #{self.class}##{__method__}"
    end

    def show
      raise NotImplementedError, "You must implement #{self.class}##{__method__}"
    end

    def finish
      raise NotImplementedError, "You must implement #{self.class}##{__method__}"
    end
  end
end
