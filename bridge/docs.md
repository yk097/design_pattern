# Bridgeパターン
機能のクラス階層と実装のクラス階層を分離する
- 機能のクラス階層とは？
  - 「機能追加」を目的としたクラスの分け方
  - 親クラスの処理に加えて、子クラスに専用の処理を追加する方法

  ```rb
  class Parent
    def something
    end
  end

  class Child < Parent
    def another_something
    end
  end
  ```


- 実装のクラス階層とは？
  - 「機能実装」を目的としたクラスの分け方
  - テンプレートメソッドパターンのように、スーパークラスではAPIや構造を定義して、実装をサブクラス側に任せる方法
  ```rb
  class Abstract
    def exec
      concrete_exec
    end

    private

    def concrete_exec
      raise NotImplementedError
    end
  end

  class Concrete < Abstract
    def concrete_exec
      # 何らかの処理
    end
  end
  ```

機能のクラス階層と実装のクラス階層を分離させることで、
- それぞれのクラス階層を独自に拡張可能
- 実装をすべての機能で利用可能になる
