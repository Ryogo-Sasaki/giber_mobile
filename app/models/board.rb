class Board < ApplicationRecord
  validates :title, length: { maximum: 255 }, presence: true
  validates :body, length: { maximum: 65535 }, presence: true
  belongs_to :user, optional: true
end
