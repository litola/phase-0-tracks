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
			puts
		end 
	end

	class Worker
		#retrieve all workers
		def self.all_workers(db)
			workers = db.execute("SELECT * FROM workers")
			puts "--    Workers Directory    --"
			workers.each do |worker|
				puts "#{worker['id']}. Name: #{worker['name']} Phone: #{worker['phone']} Daily salary: $#{worker['daily_salary']} Company: #{worker['company_id']}"
			end
			puts
		end
		#all workers from one company
		def self.workers_from_company(db,company_id)
			company = db.execute("SELECT * FROM companies Where id = ?",[company_id])
			workers = db.execute("SELECT * FROM workers Where company_id = ?",[company_id])
			puts "--    Workers from #{company[0]['name'].upcase}:  --"
			workers.each do |worker|
				puts "#{worker['id']}. Name: #{worker['name']} Phone: #{worker['phone']} Daily salary: $#{worker['daily_salary']}"
			end
			puts
		end
	end

end