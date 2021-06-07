class Pastime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '映画' },
    { id: 3, name: 'スポーツ' },
    { id: 4, name: '音楽' },
    { id: 5, name: 'アニメ' },
    { id: 6, name: 'ゲーム' },
    { id: 7, name: 'ジム・筋トレ' },
    { id: 8, name: '旅行' },
    { id: 9, name: '温泉' },
    { id: 10, name: 'カフェ' },
    { id: 11, name: 'キャンプ' },
    { id: 12, name: '海' },
    { id: 13, name: '料理' },
    { id: 14, name: '食事' },
    { id: 15, name: 'カメラ' },
    { id: 16, name: 'ドライブ' },
    { id: 17, name: 'スキー・スノボ' },
    { id: 18, name: 'BBQ' },
    { id: 19, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :tweets
  end