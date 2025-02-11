class StringDisplay
  include AbstractDisplay
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def open
    print_line
  end

  def print
    puts "|#{string}|"
  end

  def close
    print_line
  end

  def print_line
    puts "+#{'-' * string.length}+"
  end
end
