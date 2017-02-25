#Module to print out reports for User Interface
require 'Date'
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
	#retrieve all workers in sistem
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

	class Assistance
		def self.print_all_worker_assistance(db,worker_id)
			count = 0
			puts "--    Worker Assistance Table   --"
			assistances = db.execute("SELECT assistances.date_of_assistance, workers.name, assistances.assistance FROM workers JOIN assistances WHERE workers.id = worker_id AND worker_id = ? ORDER BY date_of_assistance ASC", [worker_id])
			assistances.each do |a|
				if a['assistance']==1
					a['assistance'] = 'Present'
					count +=1
				elsif a['assistance']==0
					a['assistance'] = 'Absent'
				end
				puts "#{a['date_of_assistance']} #{a['name']} #{a['assistance']}"
			end
			puts "total: #{count}"
			puts
		end
	#retrieve assistance by worker and range dates returns number of presents
		def self.get_range_worker_assistances(db,worker_id,start_date,end_date)
			start_date = Date.parse(start_date)
			end_date = Date.parse(end_date)
			count = 0 
			assistances = db.execute("SELECT assistances.date_of_assistance, workers.name, workers.daily_salary, assistances.assistance FROM workers JOIN assistances WHERE workers.id = worker_id and worker_id = ?",[worker_id])
			assistances.each do |a|
				date = Date.parse(a['date_of_assistance'])
				if date >= start_date && date <= end_date && a['assistance'] == 1
					count += 1
				end
			end
			puts "Worker: #{assistances[0]['name']}"
			puts "Assistance from #{start_date} to #{end_date}:"
			puts "assistances: #{count}"
			puts "Daily salary: #{assistances[0]['daily_salary']}"
			total = count * assistances[0]['daily_salary']
			puts "To pay $ #{total}"
			puts "---------------------------"
			return count
		end

	end

end