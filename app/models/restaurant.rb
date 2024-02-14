class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  # :category["chinese", "italian", "japanese", "french", "belgian"]
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  # validates :size, inclusion: { in: %w(small medium large),
  #   message: "%{value} is not a valid size" }

  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
