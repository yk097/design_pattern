# 機能のクラス階層
class CountDisplay < Display
  def count_display(times)
    open
    times.times { print }
    close
  end
end
