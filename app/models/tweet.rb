class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :pastime
  
  validates :content, presence: true
  validates :pastime_id, numericality: { other_than: 1 } 
end
