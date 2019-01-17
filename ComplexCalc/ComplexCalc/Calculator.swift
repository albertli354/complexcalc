//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    // simple calculation
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    // complex comculation with array
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func add(_ intArray: [Int]) -> Int {
        var result: Int = 0
        for element in intArray {
            result += element
        }
        return result
    }
    
    func multiply(_ intArray: [Int]) -> Int {
        if intArray.count == 0 {
            return 0
        }
        
        var result: Int = 1
        for element in intArray {
            result *= element
        }
        return result
    }
    
    func count(_ intArray: [Int]) -> Int {
        return intArray.count
    }
    
    func avg(_ intArray: [Int]) -> Int {
        if intArray.count == 0 {
            return 0
        }

        return add(intArray)/count(intArray)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result: Int = beg
        for element in args {
            result = op(element, result)
        }        
        return result
    }
    
    //calculation with tulples
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    //assert(calc.add(lhs: pd1, rhs: pd2) == ["x": 1, "y": 9])
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    
    
    
    
    
}
