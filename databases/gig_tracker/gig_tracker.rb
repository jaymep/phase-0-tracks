# GIG TRACKING (5/5 complete -- Huzzah!)
  # Create a database to track bellydance things
  # Create a table to track past and future gigs
  # Allow user to modify a gig entry
  # Allow user to create a gig entry
  # Allow user to print a (sorted) list of gigs

# USER INTERFACE (0/4)
#   Ask user which action is desired
#   Ask user for more data if needed
#   Perform requested actions
#   Print confirmation for user

# BONUS: (as in, if time allows or after Phase 0)
#   Allow user to generate report of performance fees earned
#     in total
#     per venue
#     per specified period
#   Add tables; complexity to database (see notes text file)

# require gems for database and data generation
# pass db variable into each method or change its scope

require 'sqlite3'
require 'faker'
# require_relative 'performances'

# create SQLite3 database
db = SQLite3::Database.new("bellydance.db")
# db.results_as_hash = true # removed to clean up print output

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

# retrieve performance lists
def get_list(db, field)
  list_shows = <<-LIST
  SELECT id, date, venue, fee FROM performances ORDER BY #{field}
  LIST
  list_set = db.execute(list_shows)
  puts "Performances"
  puts ""
  list_set.each do |id, date, venue, fee|
    puts "ID: #{id}    Date: #{date}    Fee: $#{fee}    Venue: #{venue}"
  end
end

# response methods (refactor)
def adding(db)
  puts "When is the performance? (yyyy-mm-dd)"
  date = gets.chomp
  puts "Where will it be?"
  venue = gets.chomp
  puts "What is the agreed upon performance fee?"
  fee = gets.chomp.to_i
  add_performance(db, date, venue, fee)
  puts "\nPerformance added.\n"
end

def updating(db)
  puts "\nWhich performance are you updating? (Enter id)"
  id = gets.to_i
  puts "\nWhat has changed? (date, venue, fee)"
  field = gets.chomp
  puts "\nWhat should it be now? (\"yyyy-mm-dd\", \"venue\", fee)"
  new_value = gets.chomp.to_s
  update_performance(db, id, field, new_value)
  puts "\nPerformance updated.\n"
end

puts "Hello! What would you like to do today?\n'Add' a performance\n'Update' a performance\n'List' your performances\n'Quit'\n"
response = gets.chomp.capitalize


until response == "Quit" || response == "quit"
  if "Add a booking".include? response
    adding(db)
  elsif "Update a performance".include? response
    updating(db)
  elsif "List your bookings".include? response
    puts "\nHow would you like your list sorted? (date, venue, fee)"
    sort_by = gets.chomp
    get_list(db, sort_by)
    puts ""
  elsif "Quit".include? response
    puts "\nThank you!"
  else
    puts "\nResponse unclear. Please try again.\n"
  end
    puts "\nHello! What would you like to do today?\n'Add' a performance\n'Update' a performance\n'List' your performances\n'Quit'\n"
    response = gets.chomp.capitalize
end
  puts "\nThank you!"


# DRIVER CODE
# print list sorted by date, venue or performance fee
# get_list(db, "date")
# get_list(db, "venue")
# get_list(db, "fee")

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







# ==========
# Expansion: inventory tables, music/playlist tables, venues & contact table
#
# Try a smaller (more nimble) scale of table below for assignment/proof of concept
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


# potential_notes = ["style: Gypsy", "style: Turkish", "style: Egyptian", "style: American Cabaret", "style: Persian", "style: Tribal Fusion", "style: Latin Fusion", "props: finger cymbals", "props: rectangular veil", "props: half-circle veil", "props: veil fans", "props: sword", "props: cane", "props: candle", "event: Wedding", "event: Rehearsal Dinner", "event: Bachelorette Party", "event: Birthday", "event: Bar Mitzvah/Bat Mitzvah", "event: Sweet 16th", "event: Corporate event", "event: Staff Party", "event: Business Function", "event: Convention", "event: Bridal Shower", "event: Baby Shower", "event: Anniversary", "event: Resort/Hotel Party", "event: Theme party", "event: Senior Home event", "event: Educational event", "event: Promotional event", "event: Grand Openings", "event: Fundraiser", "event: Art Shows", "event: Housewarming", "event: Graduation", "event: Christmas Party", "event: New Year's Party", "outfit: black", "outfit: white", "outfit: blue", "outfit: red", "outfit: green", "outfit: gold", "outfit: silver", "outfit: pink", "outfit: purple", "outfit: burgundy"]

# potential_times = %w[1pm 2pm 3pm 4pm 5pm 6pm 7pm 8pm 9pm 11am 12pm]

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


# puts list_gigs(db)

# def booking_info(db)
#   puts "When is the performance? (yyyy-mm-dd)"
#   date = gets.chomp
#   puts "Where will it be?"
#   venue = gets.chomp
#   puts "What is the agreed upon performance fee?"
#   fee = gets.chomp.to_i
#   add_performance(db, date, venue, fee)
# end

# def performance_update(db)
#   puts "Which performance are you updating? (Enter id)"
#   id = gets.to_i
#   puts "What has changed? (date, venue, fee)"
#   field = gets.chomp
#   puts "What should it be now?"
#   new_value = gets.chomp
#   update_performance(db, id, field, new_value)
# end