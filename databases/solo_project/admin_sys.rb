#require sqlite 3 gem
require 'sqlite3'
require_relative 'companies'
require_relative 'reporter'
#Initialize all tables for the DB
#create a administration system db
db = SQLite3::Database.new "admin_sys.db"
db.results_as_hash = true
#create table companies
create_table_companies = <<-SQL
	  CREATE TABLE IF NOT EXISTS companies (
	    id INTEGER PRIMARY KEY,
	    name varchar(255),
	    phone varchar(255)
	  );
	SQL
db.execute(create_table_companies)
#create table workers
create_table_workers = <<-SQL
	  CREATE TABLE IF NOT EXISTS workers (
	    id INTEGER PRIMARY KEY,
	    name varchar(255),
	    phone varchar(255),
	    daily_salary real
	  );
	SQL
	db.execute(create_table_workers)

#DRIVER CODE
# company1 = Company.new("Company A","512 548 87 52")
# company1.new_company(db)
# company2 = Company.new("Company B","682 558 12 23")
# company2.new_company(db)
# Reporter::Company.all_companies(db)