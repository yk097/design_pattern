module Generator
  class IncrementalNumberGenerator < NumberGenerator
    def initialize(start: 0, finish: 20, step: 1)
      super()
      @start = start
      @finish = finish
      @step = step
    end

    def exec
      start.upto(finish - 1).each_slice(step) do |ary|
        @number = ary.first
        notify
      end
    end

    private

    attr_reader :start, :finish, :step
  end
end
