require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

display1 = Display::StringDisplay.new('こんにちわ、世界。')
display1.show

display2 = Display::SideBorder.new(display1, char: '#')
display2.show

display3 = Display::FullBorder.new(display1)
display3.show

display4 = Display::FullBorder.new(display3)
display4.show

display5 = Display::FullBorder.new(display4)
display5.show
