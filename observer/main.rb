require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

digit_observer = Observer::DigitObserver.new
graph_observer = Observer::GraphObserver.new
generator = Generator::RandomNumberGenerator.new

generator.observers << digit_observer
generator.observers << graph_observer
generator.exec
