require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

no_supporter = Support::NoSupport.new(name: 'no_support')
special_supporter = Support::SpecialSupport.new(name: 'special_support', number: 68)
odd_supporter = Support::OddSupport.new(name: 'odd_support')
limit_supporter = Support::LimitSupport.new(name: 'limit_support', limit: 50)

no_supporter.then { |sup| sup.next_support = special_supporter }
            .then { |sup| sup.next_support = odd_supporter }
            .then { |sup| sup.next_support = limit_supporter }

60.times do |i|
  trouble = Trouble.new(i)
  no_supporter.support(trouble)
end
