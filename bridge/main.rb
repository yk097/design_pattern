require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

display = Display.new(StringDisplay.new('Hello, world.'))
count_display = CountDisplay.new(StringDisplay.new('Implement display.'))
random_display = RandomDisplay.new(StringDisplay.new('Random display.'))

display.display
count_display.display
count_display.count_display(5)
random_display.random_display(10)

file_display = Display.new(FileDisplay.new('./bridge/sample.txt'))
file_display.display

puts '--------------'
# 実装のクラス階層と機能のクラス階層を組み合わせることも可能
count_file_display = CountDisplay.new(FileDisplay.new('./bridge/sample.txt'))
count_file_display.count_display(5)
