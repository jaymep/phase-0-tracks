#At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.
# Status may change after each conditional, so each is its own loop.
# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”

# If all conditionals == false/beginning status
# status = 'Results inconclusive'

# Add a line at the very end of your program that prints, "Actually, never mind! What do these questions have to do with anything? Let's all be friends." right before it exits. Ahhh, much better.

puts('How many employees today?')
n = gets.chomp
n = n.to_i

x = 1

until x > n

puts("What is your name?")
name = gets.chomp

puts("How old are you?")
age = gets.chomp
age = age.to_i

puts("What year were you born?")
birth_year = gets.chomp
birth_year = birth_year.to_i
current_year = Time.now.year
current_year = current_year.to_i
real_age = current_year - birth_year

puts("Our company cafeteria serves garlic bread. Should we order some for you? (y/n)")
garlic = gets.chomp
if garlic == 'y'
  garlic = true
else
  garlic = false
end

puts("Would you like to enroll in the company’s health insurance? (y/n)")
insurance = gets.chomp
if insurance == 'y'
  insurance = true
else
  insurance = false
end

if age == real_age && ( garlic || insurance)
  status = 'Probably a not a vampire'
elsif !(age == real_age) && (!garlic || !insurance)
  status = 'Probably a vampire'
elsif !(age == real_age) && (!garlic && !insurance)
  status = 'Almost certainly a vampire'
elsif name == 'Drake Cula' || name == 'Tu Fang'
  status = 'Definitely a vampire'
else 
  status = 'Results inconclusive'
end

# Check for sunshine allergy
allergies = Array.new
allergy = ""

until allergy == 'done' || allergy == 'sunshine'
  puts("What are you allergic to? (Enter one allergy at a time, then 'done' when finished)")
  allergy = gets.chomp
  allergies << allergy 
  # break if allergy == 'sunshine'
end

if allergies.include? 'sunshine'
  status = 'Probably a vampire'
else
  status = status
end

# Print the result at the end of the survey.
puts('Employee Status: ' + status)

x += 1

end

print("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")