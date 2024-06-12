# Compositeパターン
入れ物とその中身を「同じ仲間」とみなして再起的な構造をつくるパターン
ディレクトリとファイルの関係を想像するとイメージしやすい

- ディレクトリとファイルはどちらもディレクトリエントリとして扱うことができる
- ディレクトリの中には別のディレクトリを格納することができる

## 役割
- Leaf
  - 中身役
- Composite
  - 入れ物役
- Component
  - LeafとCompositeを同一視するための抽象

## ポイント
複数(Composite)と単数(Leaf)をComponentとして同一視する

- CompositeとLeafのインターフェースを揃える
- Compositeは保持している各Leafに対して処理を委譲する

このポイントを抑えるとComponentが複数なのか単数なのかを意識せずに扱うことができる

```ruby:composite.rb
class Leaf < Component
  attr_reader :size
end

class Composite < Component
  attr_reader :leaves
  def size
    leaves.sum(&:size)
  end
end

# 使うときはCompositeなのかLeafなのかは気にしなくて良い
Leaf.new().size
Composite.new().size
```
