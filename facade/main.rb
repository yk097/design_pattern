require './zeitwerk_loader'
require 'pry'
ZeitwerkLoader.setup(__dir__)

addr = 'foo@example.com'
filename = "#{__dir__}/outputs/welcome.html"
PageMaker::PageMaker.make_welcome_page(addr, filename)
