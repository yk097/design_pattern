class FileEntry < Entry
  attr_accessor :name, :size

  def initialize(name, size = 0)
    @name = name
    @size = size
  end

  def path(prefix = "")
    puts "#{prefix}/#{to_s}"
  end
end
