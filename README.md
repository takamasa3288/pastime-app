# Friend Connect
Friend Connectとは趣味が似ている人や話が合いそうな人と、トークしたりつながったりできるアプリです。


# 目指した課題解決
このアプリは自分の趣味が恥ずかしくて言いにくい人や、自分から話しかけに行くのが苦手な人でも簡単に友達を作ったり、似ている趣味の人と繋がれたりすることができることの課題を解決するために作られたアプリです。
# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ---------------    | ------ | ------------------------ |
| name               | string | null: false              |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |

### Association
- has_many :tweets
- has_many :tweetcomments
- has_one :profile

## tweets テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| content            | text        | null:false                    |
| pastime_id         | integer     | null:false                    |
| user               | references  | null:false, foreign_key: true |

### Association
- has_many :tweetcomments
- belongs_to :user

## tweetcomments テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| content            | text        | null:false                    |
| tweet              | references  | null:false, foreign_key: true |
| user               | references  | null:false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :tweet

## profiles テーブル

| Column             | Type        | Options                       |
| ---------------    | ------------| ------------------------      |
| description        | text        | null:false                    |
| pastime            | string      | null: false                   |
| gender_id          | string      | null: false                   |
| birth_place_id     | string      | null: false                   |
| resident_id        | string      | null: false                   |
| birth_day          | date        | null: false                   |
| user               | references  | null:false, foreign_key: true |

### Association
- has_many :tweets
- has_many :tweetcomments