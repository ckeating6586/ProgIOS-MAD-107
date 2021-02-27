import Cocoa

//Must design a clock app that simulates a working clock that keeps track of hours minutes and seconds.
// create a recipe for this app

let seconds_in_minute = 60
let seconds_in_hour = 3600

var seconds = 0
var minutes = 0
var hours = 0

while true{
    sleep(1)
    seconds += 1
    hours = seconds / seconds_in_hour
    var remainder = seconds % seconds_in_hour
    minutes = remainder / seconds_in_minute
    remainder = remainder % seconds_in_minute
    print(String(hours) + "h:" + String(minutes) + "m:" + String(remainder) + "s")
}
