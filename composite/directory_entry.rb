class DirectoryEntry < Entry
  attr_accessor :name, :directories

  def initialize(name)
    @name = name
    @directories = []
  end

  def size
    directories.sum(&:size)
  end

  def add(entry)
    directories << entry
  end

  def path(prefix = '')
    puts "#{prefix}/#{to_s}"
    directories.each { |entry| entry.path("#{prefix}/#{name}") }
  end
end
