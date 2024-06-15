class Entry
  def name
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def size
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def add
    raise CompositeError.new("#{self.class} is not a directory")
  end

  def path(prefix = "")
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def parent
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def full_path
    parent ? "#{parent.full_path}/#{name}" : "/#{name}"
  end

  def to_s
    "#{name}(#{size})"
  end
end
