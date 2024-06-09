require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

Display::CharDisplay.new('H').display
Display::StringDisplay.new('いいお天気ですね').display
