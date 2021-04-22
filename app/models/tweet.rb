class Tweet < ApplicationRecord
  validates :content, presence: true
  blongs_to :user
end
