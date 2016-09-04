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
# pass db variable into each method or change its scope

require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("bellydance.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS gig_tracker(
  id INTEGER PRIMARY KEY,
  date DATE,
  time TIME,
  venue_name VARCHAR(255),
  venue_address VARCHAR(255),
  phone_number VARCHAR(255),
  contact_name VARCHAR(255),
  fee INTEGER,
  deposit_paid BOOLEAN,
  notes VARCHAR(255)
  )
SQL

db.execute(create_table)

def book_gig(db, date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes)
  db.execute("INSERT INTO gig_tracker (date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", [date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes])
end

potential_notes = ["style: Gypsy", "style: Turkish", "style: Egyptian", "style: American Cabaret", "style: Persian", "style: Tribal Fusion", "style: Latin Fusion", "props: finger cymbals", "props: rectangular veil", "props: half-circle veil", "props: veil fans", "props: sword", "props: cane", "props: candle", "event: Wedding", "event: Rehearsal Dinner", "event: Bachelorette Party", "event: Birthday", "event: Bar Mitzvah/Bat Mitzvah", "event: Sweet 16th", "event: Corporate event", "event: Staff Party", "event: Business Function", "event: Convention", "event: Bridal Shower", "event: Baby Shower", "event: Anniversary", "event: Resort/Hotel Party", "event: Theme party", "event: Senior Home event", "event: Educational event", "event: Promotional event", "event: Grand Openings", "event: Fundraiser", "event: Art Shows", "event: Housewarming", "event: Graduation", "event: Christmas Party", "event: New Year's Party", "outfit: black", "outfit: white", "outfit: blue", "outfit: red", "outfit: green", "outfit: gold", "outfit: silver", "outfit: pink", "outfit: purple", "outfit: burgundy"]

potential_times = %w[1pm 2pm 3pm 4pm 5pm 6pm 7pm 8pm 9pm 11am 12pm]

# 20.times do
  book_gig(
    db, 
    Faker::Date.backward(180).to_s,
    potential_times.sample, 
    Faker::Company.name, 
    Faker::Address.street_address, 
    Faker::PhoneNumber.phone_number, 
    Faker::Name.name, 
    rand(250-500), 
    [true, false].sample.to_s, 
    potential_notes.sample
    )
# end