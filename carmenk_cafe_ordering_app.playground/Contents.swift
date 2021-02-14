import Cocoa

//This is an app to online order items from a cafe located in chicago

let chicago_sales_tax = 0.175

var chai_latte = (large: 4.00, medium: 3.00, small: 2.00)
var coffee = (large: 3.00, medium: 2.00, small: 1.00)
var cappucino = (large: 4.00, medium: 3.00, small: 2.00)
var breakfast_sandwhich = 10.00
var donut = 1.00
var gift_card = 0.00

print("1 medium chai latte, 1 large coffee, and two breakfast sandwhiches have been added into the cart")
var customer_total = chai_latte.medium + coffee.large + (2*breakfast_sandwhich)
print("Subtotal for your cart before tax is " + String(customer_total) + " dollars")
var purchase_tax = Double(customer_total) * chicago_sales_tax
print("Your tax is " + String(purchase_tax) + " dollars")
print("You applied a $10 gift card")
gift_card += 10.00
customer_total += purchase_tax
customer_total -= gift_card
print("The total that you now owe is " + String(customer_total) + " dollars" )


