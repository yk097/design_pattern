class FileDisplay
  include AbstractDisplay
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def open
    return if File.empty?(path)

    @file = File.open(path, 'r')
  end

  def print
    return unless @file

    if @file.eof?
      @file.rewind
      print
    else
      puts @file.readlines
    end
  end

  def close
    @file&.close
  end
end
