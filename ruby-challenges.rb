# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }

def own_index (hash)
    new_array = hash.values.flatten.sort
    p new_array
end
own_index(us_states)
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
#Create a method called own_index that takes a hash as an arguement.
#Create a variable that will hold the arguement with the .values method to add each hash value into its own index in the array, followed by the .faltten method to remove nested arrays, followed by .sort to alphabetize all the values in the array if the value is a string.

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

class Bike
    attr_accessor :model, :wheels, :speed
    def initialize(model)
        @model = model
        @wheels = 2
        @speed = 0
    end
    
    def bike_info
        "The #{@model} bike has #{wheels} wheels and is going #{@speed} mph."
    end

    def pedal_faster(num)
        @speed = @speed + num
    end

    def brake (num)
    @speed = [0, @speed - num].max
    end
end
trek = Bike.new('Trek')
p trek.bike_info
# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# Create a class called bike
# add an attr_accessor to not have to use getter and setter methods
# create the initializer method with the an expected arguement that is the model of the bike. Set wheels and speed instance variables to default values
# create the bike_info method that will give us all the information of the bike using string interpolation.
# create a new instance of the class with the model being a Trek bike.

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.
trek.pedal_faster(10)
p trek.speed

trek.pedal_faster(18)
p trek.speed

trek.brake(5)
p trek.speed

trek.brake(25)
p trek.speed
# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# create a method called pedal_faster and make it update the value of @speed by whatever number is passed as an arguement.
# create a method called brake that decreases the current value of speed by whatever number is passed as the arguement but do not let the value go below 0.
# Prevent the speed from becoming a negative number by using .Max this will take the biggest value inside the arrray. Have zero as a value in the array so it can be the highest number preventing a negative value.