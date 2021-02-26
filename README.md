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
##### トップページ
![トップページ](https://github.com/h-i-k-e-n/angling-note/blob/master/image.jpeg)
https://gyazo.com/2ba99338dd987d68f57d8e7457e88e33
登録したアイテムが登録が新しい順に10個表示されます。ヘッダーにはそれぞれ、アイテム登録、カテゴリ登録、アイテム一覧、プラン一覧、リスト一覧、釣果写真一覧ページに移動できます。


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

