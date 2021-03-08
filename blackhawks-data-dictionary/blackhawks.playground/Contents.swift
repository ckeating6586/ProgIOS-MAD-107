import Cocoa

let blackhawcksplayers:[Int:(name: String, height:Int, bday:String, age:Int, city:String, state:String, country:String)] = [
    22:(name:"Ryan Carpenter", height:72, bday:"18-Jan-91", age:30, city:"Oviedo", state:"FL", country:"USA"),
    77:(name: "Kirby Dach", height: 76, bday:"21-Jan-01", age:20, city:"Fort Saskatchewan", state:"AB", country:"CAN"),
    12:(name:"Alex DeBrincat (A)", height: 67, bday: "18-Dec-97", age:23, city:"Farmington Hills", state: "MI", country: "USA"),
    38:(name:"Brandon Hagel", height: 71, bday:"27-Aug-98", age:22, city:"Saskatoon", state:"SK", country:"CAN"),
    59:(name:"Mikael Hakkarainen", height:72, bday:"26-Jan-98", age:23, city:"Helsinki", state:"n/a", country:"FIN"),
    36:(name:"Matthew Highmore", height:71, bday:"27-Feb-96", age:25, city:"Halifax", state:"NS", country:"CAN"),
    13:(name:"Mattias Janmark", height:73, bday:"8-Dec-92", age:28, city:"Danderyd", state:"n/a", country:"SWE"),
    64:(name:"David Kampf", height:74, bday:"12-Jan-95", age:26, city:"Chomutov", state:"n/a", country:"CZE"),
    88:(name:"Patrick Kane (A)", height:70, bday:"19-Nov-88", age:32, city:"Buffalo", state:"NY", country:"USA"),
    8:(name:"Dominik Kubalik", height:74, bday:"21-Aug-95", age:25, city:"Plzen", state:"n/a", country:"CZE"),
    23:(name:"Philipp Kurashev", height:72, bday:"12-Oct-99", age:21, city:"Munsingen", state:"n/a", country:"CHE"),
    92:(name:"Alex Nylander", height:73, bday:"2-Mar-98", age:23, city:"Calgary", state:"AB", country:"CAN"),
    65:(name:"Andrew Shaw (A)", height:71, bday:"20-Jul-91", age:29, city:"Belleville", state:"ON", country:"CAN"),
    15:(name:"Zack Smith", height:74, bday:"5-Apr-88", age:33, city:"Maple Creek", state:"SK", country:"CAN"),
    34:(name:"Carl Soderberg", height:75, bday:"12-Oct-85", age:35, city:"Malmö", state:"n/a", country:"SWE"),
    17:(name:"Dylan Strome", height:75, bday:"7-Mar-97", age:24, city:"Mississauga", state:"ON", country:"CAN"),
    24:(name:"Pius Suter", height:71, bday:"24-May-96", age:24, city:"Zurich", state:"n/a", country:"CHE"),
    19:(name:"Jonathan Toews (C)", height:74, bday:"29-Apr-88", age:32, city:"Winnipeg", state:"MB", country:"CAN"),
    71:(name:"Lucas Wallmark", height:72, bday:"5-Sep-95", age:25, city:"Umea", state:"n/a", country:"SWE"),
    32:(name:"Kevin Lankinen", height:74, bday:"28-Apr-95", age:25, city:"Helsinki", state:"n/a", country:"FIN"),
    30:(name:"Malcolm Subban", height:74, bday:"21-Dec-93", age:27, city:"Toronto", state:"ON", country:"CAN"),
    90:(name:"Matt Tomkins", height:75, bday:"19-Jun-94", age:26, city:"Edmonton", state:"AB", country:"CAN"),
    27:(name:"Adam Boqvist", height:71, bday:"15-Aug-00", age:20, city:"Falun", state:"n/a", country:"SWE"),
    29:(name:"Madison Bowey", height:74, bday:"22-Apr-95", age:25, city:"Winnipeg", state:"MB", country:"CAN"),
    46:(name:"Lucas Carlsson", height:72, bday:"5-Jul-97", age:23, city:"Gävle", state:"n/a", country:"SWE"),
    44:(name:"Calvin de Haan", height:73, bday:"9-May-91", age:29, city:"Carp", state:"ON", country:"CAN"),
    48:(name:"Wyatt Kalynuk", height:73, bday:"14-Apr-97", age:23, city:"Brandon", state:"MB", country:"CAN"),
    2:(name:"Duncan Keith (A)", height:73, bday:"16-Jul-83", age:37, city:"Winnipeg", state:"MB", country:"CAN"),
    51:(name:"Ian Mitchell", height:71, bday:"18-Jan-99", age:22, city:"St. Albert", state:"AB", country:"CAN"),
    5:(name:"Connor Murphy (A)", height:76, bday:"26-Mar-93", age:27, city:"Dublin", state:"OH", country:"USA"),
    7:(name:"Brent Seabrook (A)", height:75, bday:"20-Apr-85", age:35, city:"Richmond", state:"BC", country:"CAN"),
    16:(name:"Nikita Zadorov", height:78, bday:"16-Apr-95", age:25, city:"Moscow", state:"n/a", country:"RUS")
    ]

//---------------------Players sorted by Age---------------------------------------

//key = name, value = age
var players_by_age = [String:Int]()

for (_, player) in blackhawcksplayers {
    players_by_age[player.name] = player.age
}
//sort new dictionary values (age) in ascending order
let sorted_players_by_age = players_by_age.sorted {$0.1 < $1.1}
print("------------Players By Age------------")
print(sorted_players_by_age)

//---------------------Players sorted by Country---------------------------------------
//key = name, value = country
var players_by_country = [String:String]()

for (_, player) in blackhawcksplayers{
    players_by_country[player.name] = player.country
}
//sort new dictionary values (country) in ascending order
let sorted_players_by_country = players_by_country.sorted {$0.1 < $1.1}
print("------------Players By Country------------")
print(sorted_players_by_country)

//---------------------Players Average Age---------------------------------------

var age_sum = 0
for (_, player) in blackhawcksplayers {
    age_sum += player.age
}
let average_age = age_sum / blackhawcksplayers.count
print("------------Average Age Of Players------------")
print(average_age)

//---------------------Players Average Height---------------------------------------

var height_sum = 0
for (_, player) in blackhawcksplayers {
    height_sum += player.height
}
let average_height = height_sum / blackhawcksplayers.count
print("------------Average Age Of Players------------")
print(String(average_height) + " in")

//---------------------Determine the Month in which most of the players birthdays falls---------------------------------------
// key = month, value = frequency
var players_birthday_month = [String:Int]()

for (_, player) in blackhawcksplayers {
    let bday = player.bday
    let bday_tokens = bday.components(separatedBy: "-")
    let bday_month = bday_tokens[1]
    players_birthday_month[bday_month] = players_birthday_month[bday_month] != nil ? players_birthday_month[bday_month]! + 1 : 1
}

let sorted_players_bday_month = players_birthday_month.sorted {$0.1 > $1.1}
print("------------Month in which most of the players birthdays fall------------")
print(sorted_players_bday_month[0].key)

