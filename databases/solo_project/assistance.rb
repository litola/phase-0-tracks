class Assistance
	def initialize(worker_id, assistance)
		@worker_id = worker_id
		@assistance = assistance
	end

	# def new_assistance(db)
	# 	db.execute("INSERT INTO assis(name, phone,daily_salary,company_id) VALUES (?,?,?,?)",[@name,@phone,@daily_salary,@company_id])
	# end
end
# => retrieve assistance by workers
# => add/update workers assistance