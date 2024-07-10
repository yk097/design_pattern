require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

players = [].tap do |arr|
  arr << DelegateDisplay::CharDisplay.new('あ')
  arr << DelegateDisplay::StringDisplay.new('こんにちは。')
end

players.each do |display|
  DelegateDisplay::Display.new(display).display
end
