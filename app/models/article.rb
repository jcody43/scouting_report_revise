class Article < ApplicationRecord

  has_many :articles

  validates :author, presence: true
  validates :player_name, presence: true


end
