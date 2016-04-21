class TimeEntry < AccountEntry
	belongs_to :employee 
	belongs_to :customer 
end
