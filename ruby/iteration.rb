def greetings
  puts "Hello!"
  puts "Block incoming"
  yield
  puts "Block complete"
end

greetings { puts "Ciao!"}

