# Observerパターン

状態の変更に応じて処理をする[Pub/Subモデル](https://cloud.google.com/pubsub/docs/overview?hl=ja)を実装するパターン<br>
状態変更を検知するには大きく分けて２種類の方法がある

1. Pull型<br>
監視する側(Subscriber)が状態の変化があったかポーリングする<br>

2. Push型<br>
監視される側(Publisher)が状態の変化を監視する側(Subscriber)に伝える<br>
何かが起こって初めて処理を行う**イベントドリブン**のアーキテクチャ<br>
アプリのPush通知やJSのaddEventListenerなどがこれにあたる

ObserverパターンはPush型

## 役割
* Subscriber<br>
監視される側<br>
通知をするべきObserverを保持し状態が変更されたらObserverに通知する

* Publisher<br>
監視する側<br>
Subscriberからの通知を受け取ったら必要な処理を行う

## ポイント
状態の変化をpushする際、引数にPublisher自身を渡すとSubscriber側で扱いやすそう
```ruby:publisher.rb
class Publisher
  attr_reader :subscribers, :data

  def push
    subscribers.each do |sub|
      sub.push(self)
    end
  end
end
```
```ruby:subscriber.rb
class Subscriber
  def push(pub)
    #Publisherを通じて必要なデータを取得する
    pub.data
  end
end
```
