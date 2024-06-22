class Chain
  def chain
    [
      Support::HeadSupport.new(name: 'HeadSupport'),
      Support::NoSupport.new(name: 'NoSupport'),
      Support::SpecialSupport.new(name: 'SpecialSupport', number: 20),
      Support::LimitSupport.new(name: 'LimitSupport', limit: 30),
      Support::OddSupport.new(name: 'OddSupport')
    ]
  end

  def next(supporter)
    index = chain.find_index { |s| s.class == supporter.class }

    if index.nil?
      raise Errors::NotExistError, "#{klass} is not exist in the chain"
    end

    chain[index + 1]
  end
end
