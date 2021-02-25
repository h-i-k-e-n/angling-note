# アプリ名






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

