#Module to print out reports for User Interface
module Reporter
	class Company
		#retrieve all companies
		def self.all_companies(db)
			companies = db.execute("SELECT * FROM companies")
			puts "--    Companies Directory    --"
			companies.each do |c|
				puts "#{c['id']}. Name: #{c['name']} Phone: #{c['phone']}"
			end
		end
	end

	class Worker
		#retrieve all workers
		def self.all_workers(db)
			workers = db.execute("SELECT * FROM workers")
			puts "--    Workers Directory    --"
			workers.each do |worker|
				puts "#{worker['id']}. Name: #{worker['name']} Phone: #{worker['phone']} Daily salary: $#{worker['daily_salary']}"
			end
		end
	end

end