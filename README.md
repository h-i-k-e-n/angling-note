# アプリ名

## angling-note

# 概要

### できること
- アイテム登録、管理、編集、削除
- カテゴリー登録、カテゴリー別検索
- 釣果登録、管理、編集、詳細表示、検索、削除
- チェックリスト作成、追加登録、削除
- プラン作成、管理、編集、詳細表示、削除

# 制作背景(意図)
１、釣りは道具の種類が非常に多く、また釣る魚種によっても用いる道具は異なり持っているものの把握が大変です。いろんな魚種を狙うと所持する道具が増えシーズン毎に狙う魚種も違い道具は増えていきます。<br>
２、釣りに行くときは持っていくものが多く、遠出の釣りの場合は忘れ物はしたくないものです。行く場所、その日の予定や状況に合わせて必要なものを揃えなければいけません。釣りに行って１番嬉しいことは魚が釣れることですがそれまでの準備や釣りをしている時間そのものが楽しいものです。<br>
3、１番嬉しいことは魚が釣れることです。色々な期待が成せた１つの結果になります。釣れた魚に、使った道具に、釣れた場所や条件など様々な要因や思いを残したい気持ちは写真を撮ることなどして思い出に残します。<br><br>

##### 釣りの一連を楽しむために、そして把握しやすくするために道具の管理から予定の作成、予定に伴うチェックリストの作成、釣果の詳細を備忘録として残せる。<br>
そのような１つの趣味に突出したシステムがあったらいいなと思い作成しました。

### 使用者イメージ
- 釣り初心者から釣り好きな人
- 20代〜30代
- 男性
- 月に数回釣りに行く
- 釣り場が近くにない人
- 道具が何を使っているか種類が多すぎて覚えていられない人

# DEMO
### トップページ
![トップページ](https://github.com/h-i-k-e-n/angling-note/blob/master/image.jpeg)
登録したアイテムが登録が新しい順に10個表示されます。登録したアイテムの総数、総額、総重量が表示されます。ヘッダーにはそれぞれ、アイテム登録、カテゴリ登録、アイテム一覧、プラン一覧、リスト一覧、釣果写真一覧ページに移動できます。

### アイテム登録
https://gyazo.com/a24fd4b5f8e492a46423cc52f01df72b
ここで入力する金額、重量はトップページに表示されています。またカテゴリーの選択できる項目は別のカテゴリー追加のページで生成します。
※memo以外の項目は入力必須にしてます。

### カテゴリー追加
https://gyazo.com/1db439d54e5e92aa4b3b7e2208a15313
釣具は種類が多い上、使用目的や用途も個人によって異なるためあえてカテゴリーは自由度を高め、個人の言葉で分けられるようにしました。例えばアジを釣るための道具、川魚を釣るための道具としてカテゴリーを登録することで使用目的別のアイテムは何を持っているか把握しやすくしています。また自分の言葉でカスタマイズできるところに愛着が生まれる期待も込めています。

### カテゴリー別検索
https://gyazo.com/7e6a9c2595df268a0182407f3f3133f8
トップページには登録の新しい順に10個のアイテムが表示されていますが、カテゴリー検索できるページはアイテム一覧ページとなっているので全てが表示されます。

### 釣果
![釣果](https://github.com/h-i-k-e-n/angling-note/blob/master/ac691a540e4a5d42d0f68bcb7289ecf1.jpg)
ここでは釣った魚の写真の登録、検索、詳細表示ができます。<br>
https://gyazo.com/7449418983a034c261313f73ca9b1a76 <br>
どのアイテムを使って釣れたのか、自身の釣果が増えるとよく釣れているアイテムや魚種など知りたくなります。
キーワード検索が可能なのでアイテム名、タイトル名、メモの内容で検索することも可能となっています。
<br> https://gyazo.com/90267d63f66ee62cbad28d532b9b3ecb <br>
詳細表示では登録内容の見易さを追及しました。


### チェックリスト
![リスト作成](https://github.com/h-i-k-e-n/angling-note/blob/master/eee9e1e15aad388bbf78f580f4dd6511.png)
![リスト内容](https://github.com/h-i-k-e-n/angling-note/blob/master/3679659d8c407e995ed225a2928d88c1.png)
持ち物リストを作成する場合、チェック項目の内容は登録したアイテムとテンプレートとして元々登録されているアイテムを選んで作成する。
項目にないものは追記することが可能です。

買い物リストを作成する場合、タイトルのみ入力し空の状態で作成し必要な項目を追加することが可能です。
<br> (リスト作成)https://gyazo.com/0c179f8bc1b366fd22b8ff4e841b91d1 <br>
<br> (項目追記)https://gyazo.com/d7c0237b03bcb8b89f749c0e8d5aff30 <br>

### 予定
（新規プラン作成）https://gyazo.com/9e20c863f4898d2e8d73b719c48e8c87 <br>
写真さえあれば登録は可能です。当日の行動スケジュール、最寄りの情婦など事前に調べたことをここに保存できます。

<br>（プラン詳細表示） https://gyazo.com/2d6be7dcb15a33b9bed45e7c65cc3df9 <br>
詳細表示では登録内容の見易さを追及しました。


<br>
# 工夫したポイント
- トップページにアイテム総数、総額、総重量を表示し今までにかけたお金や持っているものの数など、また持ち運ぶ際の重さのおおよそがわかるようにしました。
- 前述しましたがカテゴリーの項目を自由表記できるのでカスタマイズという点で、愛着がある自分のアプリになるように考えました。
- 釣果のページでは使用アイテムを魚の写真と一緒に登録ができ釣果の記録がより正確になり検索機能にも活かせるようにしました。
- チェックリストでは追記ができることでリストにないものを補えるようにしました。
- 予定の日時登録では違和感が生まれないようスケジュールの開始日の登録が本日より後を選ばなければ登録できない。また終了日は開始日と同日以降でない限り登録できないように設計しました。

# テーブル設計
## items テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| manufacturer       | string     | null: false                    |
| purchase_date      | date       | null: false                    |
| retailer           | string     | null: false                    |
| price              | integer    | null: false                    |
| quantity           | integer    | null: false                    |
| weight             | integer    | null: false                    |
| memo               | text       | null: false                    |
| category_id        | integer    | null: false                    |

### Association
- has_many :checks
- has_one :category
- belongs_to :fish




## categories テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| category           | string     | null: false                    |

### Association
- belongs_to :item



## checks テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| title                  | string     | null: false                    |
| check_item_id          | string     |                                |
| check_list_id          | string     |                                |

### Association

- belongs_to :list
- has_one :item
- has_one :choice


## choices テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| check_id               | references | foreign_key: true              |

### Association

- belongs_to :check



## plans テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| title          | string     |                                |
| place          | string     |                                |
| address        | string     |                                |
| start_at       | date       |                                |
| end_at         | date       |                                |
| memo           | text       |                                |
| skt_a          | string     |                                |
| skt_b          | string     |                                |
| skt_c          | string     |                                |
| skt_d          | string     |                                |
| skt_e          | string     |                                |
| skt_f          | string     |                                |
| skt_g          | string     |                                |
| skt_h          | string     |                                |
| skt_i          | string     |                                |
| skt_j          | string     |                                |
| skm_a          | string     |                                |
| skm_b          | string     |                                |
| skm_c          | string     |                                |
| skm_d          | string     |                                |
| skm_e          | string     |                                |
| skm_f          | string     |                                |
| skm_g          | string     |                                |
| skm_h          | string     |                                |
| skm_i          | string     |                                |
| skm_j          | string     |                                |


### Association

- has_many :schedule




## fishテーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     | null: false                    |
| memo          | string     |                                |
| item_a        | string     |                                |
| item_b        | string     |                                |
| item_c        | string     |                                |

### Association

- has_many :items

