class Budget < ApplicationRecord
  validates :amount, presence: true, numericality: { greater_than: 0 }
  belongs_to :category
  belongs_to :user
end
