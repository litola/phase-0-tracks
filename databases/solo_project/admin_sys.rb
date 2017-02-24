#require sqlite 3 gem
require 'sqlite3'
#create a administration system db
db = SQLite3::Database.new "admin_sys.db"