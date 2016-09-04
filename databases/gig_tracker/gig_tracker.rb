# GIG TRACKING (3/5 complete)
  # Create a database to track bellydance things
  # Create a table to track past and future gigs
# Allow user to modify a gig entry
  # Allow user to create a gig entry
# Allow user to print a (sorted) list of gigs

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
  CREATE TABLE IF NOT EXISTS performances(
  id INTEGER PRIMARY KEY,
  date DATE,
  venue VARCHAR(255),
  fee INTEGER
  )
SQL

db.execute(create_table)

# add performance
def add_performance(db, date, venue, fee)
  db.execute("INSERT INTO performances (date, venue, fee) VALUES (?, ?, ?)", [date, venue, fee])
end

# update performance
def update_performance(db, id, field, new_value)
  update_perf = <<-UPDATE
  UPDATE performances SET #{field} = #{new_value} WHERE id = #{id}
  UPDATE
  db.execute(update_perf)
end




# update single record
# update_performance(db, 26, "fee", 300)

# add single performance
# add_performance(db, "2016-09-24", "Zaytoon", 250)

# mass create records -- past and future
# 20.times do
#   add_performance(db, Faker::Date.backward(180).to_s, Faker::Company.name, rand(250..500))
# end
# 10.times do
#   add_performance(db, Faker::Date.forward(90).to_s, Faker::Company.name, rand(250..500))
# end








#
#
# Try a smaller (more nimble) scale of table below 
# create_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS gig_tracker(
#   id INTEGER PRIMARY KEY,
#   date DATE,
#   time TIME,
#   venue_name VARCHAR(255),
#   venue_address VARCHAR(255),
#   phone_number VARCHAR(255),
#   contact_name VARCHAR(255),
#   fee INTEGER,
#   deposit_paid BOOLEAN,
#   notes VARCHAR(255)
#   )
# SQL

# db.execute(create_table)

# def book_gig(db, date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes)
#   db.execute("INSERT INTO gig_tracker (date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);", [date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes])
# end

# def change_gig(db, field, new_value, gig_id)
#   update_gig =  <<-SQL
#   UPDATE gig_tracker SET #{field} = #{new_value} WHERE id = #{gig_id};
#   SQL
#   db.execute(db, update_gig)
# end

# change_gig(db, 33, "time", "6pm")


# def list_gigs
#   db.execute("SELECT * FROM gig_tracker;")
# end

# potential_notes = ["style: Gypsy", "style: Turkish", "style: Egyptian", "style: American Cabaret", "style: Persian", "style: Tribal Fusion", "style: Latin Fusion", "props: finger cymbals", "props: rectangular veil", "props: half-circle veil", "props: veil fans", "props: sword", "props: cane", "props: candle", "event: Wedding", "event: Rehearsal Dinner", "event: Bachelorette Party", "event: Birthday", "event: Bar Mitzvah/Bat Mitzvah", "event: Sweet 16th", "event: Corporate event", "event: Staff Party", "event: Business Function", "event: Convention", "event: Bridal Shower", "event: Baby Shower", "event: Anniversary", "event: Resort/Hotel Party", "event: Theme party", "event: Senior Home event", "event: Educational event", "event: Promotional event", "event: Grand Openings", "event: Fundraiser", "event: Art Shows", "event: Housewarming", "event: Graduation", "event: Christmas Party", "event: New Year's Party", "outfit: black", "outfit: white", "outfit: blue", "outfit: red", "outfit: green", "outfit: gold", "outfit: silver", "outfit: pink", "outfit: purple", "outfit: burgundy"]

# potential_times = %w[1pm 2pm 3pm 4pm 5pm 6pm 7pm 8pm 9pm 11am 12pm]

# Create performance history
# 20.times do
#   book_gig(
#     db, 
#     Faker::Date.backward(180).to_s,
#     potential_times.sample, 
#     Faker::Company.name, 
#     Faker::Address.street_address, 
#     Faker::PhoneNumber.phone_number, 
#     Faker::Name.name, 
#     rand(250..500), 
#     [true, false].sample.to_s, 
#     potential_notes.sample
#     )
# end

# Create future bookings
# 10.times do
#   book_gig(
#     db, 
#     Faker::Date.forward(90).to_s,
#     potential_times.sample, 
#     Faker::Company.name, 
#     Faker::Address.street_address, 
#     Faker::PhoneNumber.phone_number, 
#     Faker::Name.name, 
#     rand(250..500), 
#     [true, false].sample.to_s, 
#     potential_notes.sample
#     )
# end

# puts "What would you like to do? (Just enter the first word of your choice.)"
# puts "Add a booking"
# puts "Change a booking"
# puts "List your bookings"
# puts "Quit"

# response = gets.chomp.capitalize 

# until response == "Quit" || response == "quit"
#   if "Add a booking".include? response
#     p "When is the gig? (yyyy-mm-dd)"
#     date = gets.chomp
#     p "When does the gig start? (Ex. 6pm)"
#     time = gets.chomp
#     p "Where will it be?"
#     venue_name = gets.chomp
#     p "What is the address?"
#     venue_address = gets.chomp
#     p "Who is your point of contact?"
#     contact_name = gets.chomp
#     p "What is his/her phone number?"
#     phone_number = gets.chomp
#     p "What is the agreed upon performance fee?"
#     fee = gets.chomp.to_i
#     p "Does a deposit need to be paid? (true/false)"
#     deposit_paid = gets.chomp
#     p "Any notes to keep in mind?"
#     notes = gets.chomp
#     book_gig(db, date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes)
#   elsif "Change a booking".include? response
#     p "Which gig are you changing? (Enter id)"
#     id = gets.to_i
#     p "What has changed? (date, time, venue_name, venue_address, phone_number, contact_name, fee, deposit_paid, notes)"
#     field = gets.chomp
#     p "What should it be now?"
#     new_value = gets.chomp
#     change_gig(db, gig_id, field, new_value)
#   elsif "List your bookings".include? response
#     p 
#   elsif "Quit".include? response
#     p "Thank you!"
#   else
#     puts "Response unclear. Please try again."
#     puts ""
#     puts "What would you like to do?"
#     puts "Add a booking"
#     puts "Change a booking"
#     puts "List your bookings"
#     puts "Quit"
#   end
#   p "Thank you!"
# end

# p list_gigs(db)