module Support
  class SpecialSupport < Abstract
    attr_reader :number

    def initialize(name:, number:)
      super(name:)
      @number = number
    end

    def resolve(trouble)
      trouble.number == number
    end
  end
end
