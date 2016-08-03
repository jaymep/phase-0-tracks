puts("Name of hamster?")
hname = gets.chomp

puts("Volume level? (1-10)")
hvolume = gets.chomp
hvolume = hvolume.to_i

puts("Fur color?")
hcolor = gets.chomp

puts("Good for adoption? (Y/N)")
hadoption = gets.chomp
if hadoption == 'Y'
	hadoption = TRUE
elsif hadoption == 'N'
	hadoption = FALSE
else
	hadoption = nil
end

puts("Estimated age (yrs)? (Ex: 0.5)")
hage = gets.chomp
hage = hage.to_f

puts("Name: "+hname)
puts("Vol: "+hvolume.to_s) 
puts("Color: "+hcolor)
puts("Good?: "+hadoption.to_s) 

if hage ==""
  hage=nil
  puts("You didn't enter age!")
else 
  puts("Age: "+hage.to_s)
end 
