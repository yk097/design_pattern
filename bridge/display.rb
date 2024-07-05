class Display
  def initialize(display)
    @display = display
  end

  def open
    @display.open
  end

  def print
    @display.print
  end

  def close
    @display.close
  end

  def display
    open
    print
    close
  end
end
