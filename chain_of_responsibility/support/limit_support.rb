module Support
  class LimitSupport < Abstract
    attr_reader :limit

    def initialize(name:, limit:)
      super(name:)
      @limit = limit
    end

    def resolve(trouble)
      trouble.number < limit
    end
  end
end
