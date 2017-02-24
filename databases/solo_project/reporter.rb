module Reporter
#retrieve all companies
	class Company
		def self.all_companies(db)
			companies = db.execute("SELECT * FROM companies")
			puts "--    Companies Directory    --"
			companies.each do |c|
				puts "#{c['id']}. Name: #{c['name']} Phone: #{c['phone']}"
			end
		end
		
	end
end