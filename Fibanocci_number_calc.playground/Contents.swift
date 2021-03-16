import Cocoa

/*
 Write a function that calculates and displays all the Fibonacci numbers from 0 to 1000
 */


func fibonacci_numbers(){
    print("0: 0")
    print("1: 1")
    var a: Double = 0
    var b: Double = 1
    
    let addition = {
        () -> Double in
        return a + b
    }
    
    for item in 2...1000 {
        let c: Double = addition()
        print(String(item) + ": " + String(c))
        a = b
        b = c
    }
    
}

fibonacci_numbers()
