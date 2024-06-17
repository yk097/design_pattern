# Visitorパターン
データの構造を表現するクラスと、データに対して処理をするクラスに分離する

## 役割
- Visitor
  - データに対する処理をするクラス
  - visitメソッドによって個々のデータに対する処理を行う
- Element
  - データの構造を表現する抽象クラス
  - visitorの訪問先となる
- ConcreteElement
  - Elementの具象クラス
- ObjectStructure
  - Elementの集合を表現するクラス

## ポイント
データ構造を表現するElementと処理を表現するVisitor。構造と処理を分離することで独立性の高いプログラムになる<br>
たとえばデータ構造を持つクラスに対して処理を実装すると処理を追加する度にデータ構造クラスを変更する必要がある<br>
具体的には以下のような問題の出現が予想される

- データ構造クラスが複数あると、その全てに機能拡張が必要
- 同じクラス(ファイル)が故に、処理を追加したいだけなのにデータ構造にバグを混入させる恐れ

それに対して「処理」と「データ構造」を分離させるVisitorパターンは以下のような利点がある
- 新しい処理を追加する場合は、新たなvisitorクラスを実装すれば良い
- 「処理」と「データ構造」が分かれているので、影響範囲を閉じることができる

「オープン・クローズドの原則」を体現したパターンとも言える<br>
- 拡張についてはOpen（visitorクラスを追加）
- 変更についてはClosed（既存のクラスは変更しない）

## 疑問
visitorクラスでループしないのはなぜだろう
```rb
  def visit(arg)
    if arg.is_element?
      visit_element(arg)
    else
      visit_elements(arg)
    end
  end

  def visit_element(element)
    # Elementに対する処理
  end

  def visit_elements(elements)
    elements.each do |e|
      visit(e)
    end
  end
```

これでも成り立つような気はするけど、なんでわざわざVisitor#visitの呼び出しにElementを経由するのだろうか。
```rb
class Visit
  def visit(arg)
    if arg.is_element?
      visit_element(arg)
    else
      visit_elements(arg)
    end
  end

  def visit_element(element)
    # Elementに対する処理
  end

  def visit_elements(elements)
    elements.each { |e| e.accept(self) }
  end
end

class Element
  def accept(visitor)
    visitor.visit(self)
  end
end
```

まだ自分の中で結論は出ていない
