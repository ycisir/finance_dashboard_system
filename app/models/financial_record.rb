class FinancialRecord < ApplicationRecord
  belongs_to :user
  enum :record_type, {:income=>0, :expense=>1}
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :record_type, presence: true
  validates :category, presence: true
  validates :date, presence: true
end
