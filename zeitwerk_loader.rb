require 'bundler/setup'
require 'zeitwerk'

module ZeitwerkLoader
  def self.setup(dir)
    loader = Zeitwerk::Loader.new
    loader.push_dir(dir)
    loader.setup
  end
end
