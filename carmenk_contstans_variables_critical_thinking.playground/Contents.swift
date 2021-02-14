import Cocoa

//This app is to identify how many dogs are available at an adoption shelter, and how many spots are left to take in more

let max_capacity = 20

var pitbulls = (male:3, female:2)
var siberian_huskys = (male:0, female:2)
var golden_retrievers = (male:1, female:1)
var labrador = (male:1, female:4)
var st_bernard = (male:1, female:2)

print("How many dogs are available at your shelter?")
var available_dogs = pitbulls.male + pitbulls.female
    + siberian_huskys.male + siberian_huskys.female
    + golden_retrievers.male + golden_retrievers.female
    + labrador.male + labrador.female
    + st_bernard.male + st_bernard.female
print("There are " + String(available_dogs) + " dogs available at our shelter")
print("Pitbulls: " + String(pitbulls.male) + " male " + String(pitbulls.female) + " female")
print("Siberian Husky: " + String(siberian_huskys.male) + " male " + String(siberian_huskys.female) + " female")
print("Golden Retriever: " + String(golden_retrievers.male) + " male " + String(golden_retrievers.female) + " female")
print("Labrador: " + String(labrador.male) + " male " + String(labrador.female) + " female")
print("St. Bernard: " + String(st_bernard.male) + " male " + String(st_bernard.female) + " female")
print("How many spots do you have open to accept new dogs?")

var spots_available = max_capacity - available_dogs
print("We have " + String(spots_available) + " spots available to take in more dogs.")

print("A male pitbull has just been adopted")
pitbulls.male -= 1

available_dogs = pitbulls.male + pitbulls.female
    + siberian_huskys.male + siberian_huskys.female
    + golden_retrievers.male + golden_retrievers.female
    + labrador.male + labrador.female
    + st_bernard.male + st_bernard.female
print("There are " + String(available_dogs) + " dogs available at our shelter")
print("Pitbulls: " + String(pitbulls.male) + " male " + String(pitbulls.female) + " female")
print("Siberian Husky: " + String(siberian_huskys.male) + " male " + String(siberian_huskys.female) + " female")
print("Golden Retriever: " + String(golden_retrievers.male) + " male " + String(golden_retrievers.female) + " female")
print("Labrador: " + String(labrador.male) + " male " + String(labrador.female) + " female")
print("St. Bernard: " + String(st_bernard.male) + " male " + String(st_bernard.female) + " female")
print("How many spots do you have open to accept new dogs?")

spots_available = max_capacity - available_dogs
print("We now have " + String(spots_available) + " spots available to take in more dogs.")

print("The shelter has just accepted two male huskys into the shelter")
siberian_huskys.male += 2

available_dogs = pitbulls.male + pitbulls.female
    + siberian_huskys.male + siberian_huskys.female
    + golden_retrievers.male + golden_retrievers.female
    + labrador.male + labrador.female
    + st_bernard.male + st_bernard.female
print("There are " + String(available_dogs) + " dogs available at our shelter")
print("Pitbulls: " + String(pitbulls.male) + " male " + String(pitbulls.female) + " female")
print("Siberian Husky: " + String(siberian_huskys.male) + " male " + String(siberian_huskys.female) + " female")
print("Golden Retriever: " + String(golden_retrievers.male) + " male " + String(golden_retrievers.female) + " female")
print("Labrador: " + String(labrador.male) + " male " + String(labrador.female) + " female")
print("St. Bernard: " + String(st_bernard.male) + " male " + String(st_bernard.female) + " female")
print("How many spots do you have open to accept new dogs?")
spots_available = max_capacity - available_dogs
print("We now have " + String(spots_available) + " spots available to take in more dogs.")

