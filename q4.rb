# Question 4
# Given a ruby Hash that looks like this:
#
# major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}

# Write a piece of code that loops through the object and prints the following to the console:
#
# BC has 3 main cities: Vancouver, Victoria, Prince George
# AB has 2 main cities: Edmonton, Calgary
# [Stretch]: Make sure that there is an and before the last one:
#
# BC has 3 main cities: Vancouver, Victoria and Prince George
# AB has 2 main cities: Edmonton and Calgary

major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}

major_cities.each do |province, cities|
  print "#{province} has #{cities.length} main cities: "
  cities.each do |city|
    # print "#{city}, "
  end
  # print cities
  puts "#{cities[0..-2].join(', ')} and #{cities[-1]}"
end
