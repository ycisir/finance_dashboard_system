class User < ApplicationRecord
	has_many :expense_records
	enum :role, {:viewer=>0, :analyst=>1, :admin=>2}
	enum :status, {:active=>0, :inactive=>1}
end
