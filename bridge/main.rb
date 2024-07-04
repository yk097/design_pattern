require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

display = Display.new(StringDisplay.new('Hello, world.'))
count_display = CountDisplay.new(StringDisplay.new('Implement display.'))

display.display
count_display.display
count_display.count_display(5)
