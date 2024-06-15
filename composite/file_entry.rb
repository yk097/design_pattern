class FileEntry < Entry
  attr_accessor :name, :size, :parent

  def initialize(name, size = 0)
    @name = name
    @size = size
    @parent = nil
  end

  def path(prefix = "")
    puts "#{prefix}/#{to_s}"
  end
end
