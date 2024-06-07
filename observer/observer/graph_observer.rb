module Observer
  class GraphObserver < AbstractObserver
    def update(generator)
      puts '*' * generator.number
      sleep 0.1
    end
  end
end
