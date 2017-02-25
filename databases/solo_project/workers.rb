class Worker
	def initialize(name,phone,daily_salary,company_id)
		@name = name
		@phone = phone
		@daily_salary = daily_salary
		@company_id = company_id
	end

	def new_worker(db)
		db.execute("INSERT INTO workers(name, phone,daily_salary,company_id) VALUES (?,?,?,?)",[@name,@phone,@daily_salary,@company_id])
	end
end

# => add/update workers