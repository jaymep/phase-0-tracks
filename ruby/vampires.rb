#At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.
puts('How many employees today?')
n = gets.chomp
n = n.to_i

# Loop survey n times then final statement

puts("What is your name?")
name = gets.chomp

puts("How old are you?")
age = gets.chomp
age = age.to_i

puts("What year were you born?")
birth_year = gets.chomp
birth_year = birth_year.to_i
current_year = Time.now.year
current_year =  current_year.to_i
real_age = current_year - birth_year

puts("Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)")
garlic = gets.chomp
if garlic = 'Y'
  garlic =  TRUE
else
  garlic = FALSE
end

puts("Would you like to enroll in the company’s health insurance? (Y/N)")
insurance = gets.chomp
if insurance = 'Y'
  insurance =  TRUE
else
  insurance = FALSE
end


# Match the following conditions in the order they're listed. Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario. This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result.

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if age == real_age && ( garlic || insurance)
  status = 'Probably a not a vampire'
end

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
if !(age == real_age) && (!garlic || !insurance)
  status = 'Probably a vampire'
end

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
if !(age == real_age) && (!garlic && !insurance)
  status = 'Almost certainly a vampire'
end

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if name == 'Drake Cula' || name == 'Tu Fang'
  status = '“Definitely a vampire'
end

# Otherwise, print “Results inconclusive.”
else
  status = 'Results inconclusive'
end


# In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.
allergies = Array.new
allergy = NIL
# status = 'Probably a not a vampire' (Necessary when testing snippet)

until allergy == 'done'
  puts("What are you allergic to? (Enter one allergy at a time, then 'done' when finished)")
  allergy = gets.chomp
  allergies << allergy
  break if allergy == 'sunshine'
end

puts allergies

if allergies.include? 'sunshine'
  status = 'Probably a vampire'
else
  status = 'Probably a not a vampire'
end



# As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”




# Print the result at the end of the survey.
print('Employee Status ' + status)

# End employee survey loop here

# Add a line at the very end of your program that prints, "Actually, never mind! What do these questions have to do with anything? Let's all be friends." right before it exits. Ahhh, much better.
print("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")