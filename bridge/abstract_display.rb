class AbstractDisplay
  def open
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def print
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def close
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end
