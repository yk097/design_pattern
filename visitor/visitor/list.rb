module Visitor
  class List < Abstract
    def initialize
      @current_directory = ''
    end

    def visit(entry)
      entry.directory? ? visit_directory(entry) : visit_file(entry)
    end

    private

    def visit_file(file)
      puts "#{@current_directory}/#{file.name} (#{file.size})"
    end

    def visit_directory(directory)
      tmp = @current_directory
      @current_directory = "#{@current_directory}/#{directory.name}"

      directory.directories.each do |entry|
        entry.accept(self)
      end

      @current_directory = tmp
    end
  end
end
