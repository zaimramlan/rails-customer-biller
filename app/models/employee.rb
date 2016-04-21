class Employee < Account
	has_many :time_entries
	has_and_belongs_to_many :projects, :join_table => "employee_projects"

	def total_hours
		time_entries.sum(:time)
	end

	def log_time(amount, customer)
		TimeEntry.create(time: amount, customer: customer, employee: self, account: customer)
	end
end
