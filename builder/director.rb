class Director
  attr_reader :builder

  def initialize(builder)
    @builder = builder
  end

  # Builderの抽象メソッドのみでインスタンスを構築する
  def construct
    builder.make_title('タイトル')
    builder.make_string('こんにちは')
    builder.make_items(%w[おはよう こんばんは])
    builder.close

    builder.result
  end
end
