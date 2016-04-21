class Employee < Account
	has_many :time_entries

	def total_hours
		time_entries.sum(:time)
	end

	def log_time(amount, customer)
		TimeEntry.create(time: amount, customer: customer, employee: self, account: customer)
	end
end
