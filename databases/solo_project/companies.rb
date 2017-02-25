class Company
	def initialize (company_name, phone)
		@name = company_name
		@phone = phone
	end
#create company
	def new_company(db)
		db.execute("INSERT INTO companies(name, phone) VALUES (?,?)",[@name,@phone])
	end
	#delete company
	def delete_company(db,company_id)
		db.execute("DELETE FROM companies WHERE id = ?",[company_id])
	end
end

# => add/update companies