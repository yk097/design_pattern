module Support
  class SpecialSupport < Abstract
    attr_reader :number

    def initialize(name:, number:, next_support: nil)
      super(name:, next_support:)
      @number = number
    end

    def resolve(trouble)
      trouble.number == number
    end
  end
end
