import Cocoa

/*
 This is a program that has a dictionary with the key as the type of shoe and the value is an array with the colors of that type.
 */

let shoes: [String:[String]] = [
    "heals":["brown","black","nude","red"],
    "boots":["brown","black","grey","olive"],
    "kittenHeals":["pale pink","black","nude","brown","indigo"],
    "running":["blue","light grey","dark grey","blue"],
    "casualSneakers":["black","dark grey","white"],
    "sandals":["brown","biege","nude","white","silver","gold","tan"]
]

var black_shoes = 0

for shoe in shoes {
    if shoe.value.contains("black") {
        black_shoes += 1
        print("I have black " + shoe.key)
    }
}

print("I have " + String(black_shoes) + " black shoes.")
