#require sqlite 3 gem
require 'sqlite3'
require 'date'
require_relative 'companies'
require_relative 'workers'
require_relative 'assistance'
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
#create workers table 
create_table_workers = <<-SQL
	  CREATE TABLE IF NOT EXISTS workers (
	    id INTEGER PRIMARY KEY,
	    name VARCHAR(255),
	    phone VARCHAR(255),
	    daily_salary REAL,
	    company_id INT,
	    FOREIGN KEY(company_id) REFERENCES companies(id) 
	  );
	SQL
	db.execute(create_table_workers)
#create assistance table
create_table_assistance = <<-SQL
	  CREATE TABLE IF NOT EXISTS assistances (
	    id INTEGER PRIMARY KEY,
	    date_of_assistance VARCHAR(255),
	    worker_id INT,
	    assistance INT,
	    FOREIGN KEY(worker_id) REFERENCES workers(id) 
	  );
	SQL
	db.execute(create_table_assistance)


#DRIVER CODE

#COMPANIES
# company1 = Company.new("Company A","512 548 87 52")
# company1.new_company(db)
# company2 = Company.new("Company B","682 558 12 23")
# company2.new_company(db)
Reporter::Company.all_companies(db)

#WORKERS
# worker1 = Worker.new("JOHN M.", "215 54 85", 200,1)
# worker1.new_worker(db)
# worker2 = Worker.new("MARY M.", "457 45 84", 220,1)
# worker2.new_worker(db)
# worker3 = Worker.new("Peter W.", "548 54 25", 205,2)
# worker3.new_worker(db)
# Reporter::Worker.all_workers(db)
Reporter::Worker.workers_from_company(db,1)
Reporter::Worker.workers_from_company(db,2)

#ASSISTANCES
# asistance = Assistance.new("2017-02-24",1)
# asistance.new_assistance(db,1)
# asistance2 = Assistance.new("2017-02-23",1)
# asistance2.new_assistance(db,1)
# asistance3 = Assistance.new("2017-02-24",2)
# asistance3.new_assistance(db,0)
# asistance3 = Assistance.new("2017-02-23",1)
# asistance3.new_assistance(db,1)
Reporter::Assistance.print_all_worker_assistance(db,1)
Reporter::Assistance.print_all_worker_assistance(db,2)
# delete = Assistance.new("2017-02-23",1)
# delete.delete_assistance(db)
Reporter::Assistance.get_range_worker_assistances(db,1,"2017-02-01","2017-02-25")
Reporter::Assistance.get_range_worker_assistances(db,1,"2017-02-24","2017-02-25")
Reporter::Assistance.get_range_worker_assistances(db,2,"2017-02-01","2017-02-25")
# update = Assistance.new("2017-02-23",1)
# update.update_assistance(db,0)
# Reporter::Assistance.print_all_worker_assistance(db,1)