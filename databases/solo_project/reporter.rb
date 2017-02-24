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
end