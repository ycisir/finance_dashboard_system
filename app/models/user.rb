class User < ApplicationRecord
	has_many :financial_records
	enum :role, {:viewer=>0, :analyst=>1, :admin=>2}
	enum :status, {:active=>0, :inactive=>1}
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :role, presence: true
	validates :status, presence: true
end
