module Support
  class OddSupport < Abstract
    def resolve(trouble)
      trouble.number.odd?
    end
  end
end
