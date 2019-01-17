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
    
    
    
    
}
