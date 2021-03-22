import Cocoa

/*
 This is an interactive menu for Bill's Burgers. I have to create an ordering app that will allow the customer to say exactly what they want on their burger using enums, structurs, and optionals.
 */

enum Buns: String {
    case Sourdough = "Artisanal Sourdough Bun"
    case Wheat = "Whole Wheat Stone Ground Bread"
    case LowCarb = "Low Carb Lettuce Wrap"
    case GlutenFree = "Artisinal Gluten-Free Bread"
}

enum Cheese: String {
    case American = "American Cheese"
    case Swiss = "Tillamook Swiss Cheese"
    case Cheddar = "Tillamook Cheddar Cheese"
    case Vegan = "Violife Cashew Cheddar Cheese"
}

enum Topping: String {
    case Lettuce = "Lettuce"
    case Tomato = "Tomatoe"
    case Mushrooms = "Sauteed Mushrooms"
    case Onions = "Onions"
    case Pickles = "Pickles"
}

enum Protein: String {
    case Turkey = "Turkey Burger"
    case Bison = "Bison Burger"
    case Beef = "Angus Beef"
    case Vegan = "Black Bean Burger"
}

enum Sauce: String {
    case SecretSauce = "Bill's Secret Sauce"
    case BBQ = "Barbeque Sauce"
    case Mustard = "Mustard"
    case Ketchup = "Ketchup"
    case Mayo = "Mayo"
}


struct Burger {
    var buns: Buns?
    var cheese: Cheese?
    var toppings: [Topping]?
    var protein: Protein?
    var sauce: [Sauce]?
    
    var output: Void {
        if let bunsoptional = buns {
            print(bunsoptional)
        } else {
            print("No Bun")
        }
        
        if let cheeseoptional = cheese {
            print(cheeseoptional)
        }else {
            print("No Cheese")
        }
        
        if let toppingoptional = toppings {
            toppingoptional.forEach{print($0)}
        } else {
            print("No toppings")
        }
        
        if let proteinoptional = protein {
            print(proteinoptional)
        } else {
            print("No Protein")
        }
        
        if let sauceoptional = sauce {
            sauceoptional.forEach{print($0)}
        }else {
            print("No Sauce")
        }
    }
}

var burger_order_1 = Burger(buns:Buns.Sourdough, cheese:Cheese.American, toppings:[Topping.Lettuce, Topping.Tomato, Topping.Onions], protein: Protein.Bison)

burger_order_1.output

var burger_order_2 = Burger(buns:Buns.LowCarb, cheese: Cheese.Vegan, toppings: [Topping.Tomato, Topping.Onions, Topping.Mushrooms], protein: Protein.Vegan)

burger_order_2.output
