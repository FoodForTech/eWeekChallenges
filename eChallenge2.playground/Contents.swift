//: Playground - noun: a place where people can play

var sumOfMultiplesOf3and5: Int {
    get {
        var sum: Int = 0;
        for i in 0..<1000  {
            if i % 3 == 0 || i % 5 == 0 {
                sum+=i
            }
        }
        return sum
    }
}

print(sumOfMultiplesOf3and5) // 233,168
