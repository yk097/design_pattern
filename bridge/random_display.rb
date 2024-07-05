class RandomDisplay < Display
  def random_display(times)
    open
    rand(times).times { print }
    close
  end
end
