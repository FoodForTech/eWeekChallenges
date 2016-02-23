//: Playground - noun: a place where people can play

import UIKit

var multiplesOf5: Int {
    get {
        var sum: Int = 0;
        for var i = 0; i < 1000; i = i+5  {
            if i % 5 == 0 {
                sum+=i
            }
        }
        return sum
    }
}

var multiplesOf3: Int {
get {
    var sum: Int = 0;
    for var i = 0; i < 1000; i = i+3  {
        if i % 3 == 0 {
            sum += i
        }
    }
    return sum
}
}

print(multiplesOf5 + multiplesOf3)


