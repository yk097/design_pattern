module Support
  class LimitSupport < Abstract
    attr_reader :limit

    def initialize(name:, limit:, next_support: nil)
      super(name:, next_support:)
      @limit = limit
    end

    def resolve(trouble)
      trouble.number < limit
    end
  end
end
