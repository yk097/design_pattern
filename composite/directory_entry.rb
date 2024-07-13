class DirectoryEntry < Entry
  attr_accessor :name, :directories, :parent

  def initialize(name)
    @name = name
    @directories = []
    @parent = nil
  end

  def size
    directories.sum(&:size)
  end

  def add(entry)
    directories << entry
    entry.parent = self
  end

  def path(prefix = '')
    puts "#{prefix}/#{self}"
    directories.each { |entry| entry.path("#{prefix}/#{name}") }
  end
end
