module Entry
  class Directory < Abstract
    attr_reader :name, :directories

    def initialize(name)
      @name = name
      @directories = []
    end

    def accept(visitor)
      visitor.visit(self)
    end

    def size
      @directories.sum(&:size)
    end

    def add(entry)
      directories << entry
    end

    def directory?
      true
    end
  end
end
