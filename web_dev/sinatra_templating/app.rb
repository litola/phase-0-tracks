# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# search student by id. 
get '/search_student' do
	erb :search_student
end

get '/student' do 
	@student = db.execute("SELECT * FROM students WHERE id = ?", [params['student_id']])
	if @student[0] != nil
		erb :student
  else
	  redirect '/search_student?error="not found"'
	 
	end
end