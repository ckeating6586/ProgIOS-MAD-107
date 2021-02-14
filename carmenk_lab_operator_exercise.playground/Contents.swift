import Cocoa

//This is a calculator app for monthly budgeting and savings

//variables for my calculator

let monthly_income = 3400

var monthly_groceries = 300
var monthly_rent = 1200
var monthly_gas = 40
var monthly_electric = 60
var tv_subscription = 50

//calculating variables

var monthly_expenses = monthly_gas + monthly_rent + monthly_groceries + monthly_electric + tv_subscription
var monthly_savings = monthly_income - monthly_expenses
var monthly_ira_savings = 5000/12

//outcomes and scenarios printed out

print("My monthly income is " + String(monthly_income))
print("My total monthly expenses equal " + String(monthly_expenses) + " dollars" )
print("After paying for my monthly expenses, I am left with " + String(monthly_savings) + " dollars for savings")
print("I want to put 5000 dollars a year into a RothIRA")
print("For a RothIRA I would need to put " + String(monthly_ira_savings) + " dollars into it a month")

monthly_savings -= monthly_ira_savings

print("I have " + String(monthly_savings) + " left after puting savings into my RothIRA")

var yearly_savings = monthly_savings * 12

print("If I save all of my extra monthly savings for twelve months, I'll have " + String(yearly_savings) + " dollars to save towards a house downpayment")
