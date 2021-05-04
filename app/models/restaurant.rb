class Restaurant < ApplicationRecord
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'], allow_nil: false }
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_number, presence: true
  has_many :reviews, dependent: :destroy
end
