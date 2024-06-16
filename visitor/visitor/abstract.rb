module Visitor
  class Abstract
    def visit(element)
      raise NotImplementedError.new("#{self.class.name}#visit(element) is an abstract method.")
    end
  end
end
