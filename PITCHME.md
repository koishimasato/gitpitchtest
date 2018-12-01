# aws LambdaのLayer機能
Lambda Layerを使うことによって、複数のLambda functionでコードの共有ができる。

ユースケース例：共通ライブラリなどを一括でLayerで管理

rubyがかけるようになったでrubyで試した

---

# 作ってみる
試しでhttpclientのgemを使ってslackへメッセージを送ってみた。

構成:

handler:
slackのwebhook_urlをhttpclientで叩く

Layer:
gemのhttpclientを入れている

---

# デモ

---

# 細かい仕様
Layerは5つまで追加可能

アップロードのコードの容量制限(250MZB)を突破できる? → 無理
[AWS Lambda の制限 - AWS Lambda](https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/limits.html)

将来的にはLayerを複数アカウントで使えるよう権限変更できる？

---

