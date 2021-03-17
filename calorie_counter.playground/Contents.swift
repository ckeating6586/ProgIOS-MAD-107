import Cocoa

/*
 This is a simple calorie counter to help budget my meals for the day.
 */

let food_calories:[String:Int] = [
    "clementine":40,
    "banana":105,
    "apple":95,
    "white rice":206,
    "quinoa":222,
    "sweet potato":114,
    "eggs":78,
    "chicken breast":35,
    "steak":679,
    "salmon":412,
    "halibut":115,
    "cod":76,
    "pork chop":505,
    "broccoli":50,
    "brussel sprouts":38,
    "cauliflower":146,
    "asparagus":27,
    "green beans":31,
    "bok choy":9,
    
]


//created a function that takes a string array as an argument and returns an integer
func calc_calories(meal:[String]) -> Int {
    var total_calories = 0
    let add_calories = {
        (item:String) -> Void in
        if food_calories.keys.contains(item) {
            total_calories += food_calories[item]!
        }
        else{
            print("The item \(item) is not known.")
        }
    }
    meal.map(add_calories)
    
    return total_calories
}


let breakfast = ["eggs","clementine","sweet potato","asparagus"]
let dinner:[String] = ["halibut", "broccoli", "white rice", "apple"]

print("Your breakfast of \(breakfast) equals  " + String(calc_calories(meal: breakfast)) + " calories")
print("Your dinner of \(dinner) equals  " + String(calc_calories(meal: dinner)) + " calories")



