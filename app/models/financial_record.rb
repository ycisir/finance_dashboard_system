class FinancialRecord < ApplicationRecord
  belongs_to :user
  enum :record_type, {:income=>0, :expense=>1}
end
