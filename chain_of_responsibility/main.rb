require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)
head = Support::HeadSupport.new(name: 'Head Support')

60.times do |i|
  trouble = Trouble.new(i)
  head.support(trouble)
end
