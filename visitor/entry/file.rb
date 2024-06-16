module Entry
  class File < Abstract
    attr_reader :name, :size

    def initialize(name, size)
      @name = name
      @size = size
    end

    def accept(visitor)
      visitor.visit(self)
    end

    def directory?
      false
    end
  end
end
