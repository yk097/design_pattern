require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

digit_observer = Observer::DigitObserver.new
graph_observer = Observer::GraphObserver.new

puts 'Random Number Generator'
randome_number_generator = Generator::RandomNumberGenerator.new
randome_number_generator.observers << digit_observer
randome_number_generator.observers << graph_observer
randome_number_generator.exec
puts 'Incremental Number Generator'
incremantal_number_generator = Generator::IncrementalNumberGenerator.new(start: 1, finish: 20, step: 2)
incremantal_number_generator.observers << digit_observer
incremantal_number_generator.observers << graph_observer
incremantal_number_generator.exec
