# GIG TRACKING
# Create a database to track bellydance things
# Create a table to track past and future gigs
# Allow user to modify a gig entry
# Allow user to create a gig entry
# Allow user to print a sorted list of gigs

# BONUS: (as in, if time allows)
#   Allow user to generate report of performance fees earned
#     in total
#     per venue
#     per specified period
#   Add tables; complexity to database

# require gems for database and data generation
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("bellydance.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS gig_tracker(
  id INTEGER
  date DATE,
  time TIME,
  venue_name VARCHAR(255),
  venue_address VARCHAR(255),
  phone_number VARCHAR(255),
  contact_person VARCHAR(255),
  fee INTEGER,
  deposit_paid BOOLEAN,
  notes VARCHAR(255)
  )
SQL