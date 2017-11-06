#done
# # Leap
# Write a program that will take a year and report if it is a leap year.
#
# The tricky thing here is that a leap year in the Gregorian calendar occurs:
#
# ```plain
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
# ```



def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end

end
