module Generator
  class RandomNumberGenerator < NumberGenerator
    LOOP_COUNT = 20

    def exec
      LOOP_COUNT.times do
        @number = rand(50)
        notify
      end
    end
  end
end
