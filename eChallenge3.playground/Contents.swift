//: Playground - noun: a place where people can play

import Foundation

let primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
func primeFactorization(var number:Int) -> [Int] {
    
    var primeFactorTree: [Int] = []
    var i = 0
    while (i < primeNumbers.count) {
        if number % primeNumbers[i] == 0 {
            primeFactorTree.append(primeNumbers[i])
            number = number/primeNumbers[i]
            i = 0
        } else {
            i++
        }
    }
    return primeFactorTree
    
}

func convertPrimeFactorization(var primeFactorTree: [Int]) -> [Int: Int] {
    
    var groupedPrimesCount = [Int: Int]()
    if primeFactorTree.count > 1 {
        for prime in primeFactorTree {
            if let _ = groupedPrimesCount[prime] {
                groupedPrimesCount[prime]!+=1
            } else {
                groupedPrimesCount[prime] = 1
            }
        }
    } else {
        groupedPrimesCount[primeFactorTree[0]] = 1
    }
    return groupedPrimesCount
    
}

func smallestDivisibleByNumber(number: Int) -> Double {
    
    var primeFactorizationList = [[Int: Int]]()
    for var i=2; i<=number; i++ {
        primeFactorizationList.append(convertPrimeFactorization(primeFactorization(i)))
    }
    var primeComplete = [Int: Int]()
    
    // extract largest exponent for prime value
    for primeFactorization: [Int: Int] in primeFactorizationList {
        for (primeKey, primeCount) in primeFactorization {
            if let addedValue = primeComplete[primeKey] {
                if primeCount > addedValue {
                    primeComplete[primeKey] = primeCount
                }
            }
            else {
                primeComplete[primeKey] = primeCount
            }
        }
    }
    
    // calculate answer
    var answer = 1.0
    for (key,value) in primeComplete {
        answer = answer * pow(Double(key), Double(value))
    }
    return answer
}

print(smallestDivisibleByNumber(20)) // 232,792,560
