class Assistance
#YYYY-MM-DD
#0-abscent 1-present 
	def initialize(date_of_assistance,worker_id)
		@date_of_assistance = date_of_assistance
		@worker_id = worker_id
		@assistance = nil
	end
#create workers assistance
	def new_assistance(db,assistance)
		db.execute("INSERT INTO assistances (date_of_assistance,worker_id,assistance) VALUES (?,?,?)",[@date_of_assistance,@worker_id,assistance])
	end
#delete workers assistance
	def delete_assistance(db)
		db.execute("DELETE FROM assistances WHERE worker_id = ? AND date_of_assistance = ? ",[@worker_id,@date_of_assistance])
	end
#update workers assistance
	def update_assistance(db,assistance)
		db.execute("UPDATE assistances SET assistance = ? WHERE worker_id = ? AND date_of_assistance = ? ",[assistance,@worker_id,@date_of_assistance])
	end

end

