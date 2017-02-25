class Company
	def initialize (company_name, phone)
		@name = company_name
		@phone = phone
	end

	def new_company(db)
		db.execute("INSERT INTO companies(name, phone) VALUES (?,?)",[@name,@phone])
	end
end

# => add/update companies