# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.



# It seems that this is an array that holds all the votes of peoples' favorite type of taco that they inputed.
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# creating a variable that holds the reduce method on the array. The reduce method iterates over each index in the array and sees how many times someting is a stored as a value in an array.
# Hash.new is used to store how many times the type of taco was entered. It's intitaly set to 0
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
#  Each time the type of taco is entered it adds 1 to result. It does not matter the casing in which the vote was written because they are using.downcase.
  result[vote.downcase] += 1
  # The return is the result
  result
end
# This displays the total number of votes for each type of taco.
p totals

# A possible prompt that will give this result could be: Gather the total votes of peoples's favorite type of taco. Create a method that will return the totals for each type of taco.