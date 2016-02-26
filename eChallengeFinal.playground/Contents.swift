
// You are given an array of n+1 integers 1 through n. In addition there is a single duplicate integer.
// The array is unsorted.
// An example valid array would be [3,2,5,1,3,4]. It has the integers 1 through 5 and 3 is duplicated. [1,2,4,5,5] would not be valid as it is missing 3.
// You should return the duplicate value as a single integer.  If you are given an invalid array, return 0.

class Duplicate {
    
    private var numbersToTest: [Int]
    private var uniqNumbers = [Int]()
    
    init(numbers: [Int]) {
        self.numbersToTest = numbers
    }
    
    func findDuplicatedNumber() -> Int {
        var answer = 0
        for number in self.numbersToTest {
            let duplicatedNumber = foundDuplicate(number)
            if duplicatedNumber != -1 {
                answer = duplicatedNumber
                break
            }
        }
        return answer
    }
    
    private func foundDuplicate(number: Int) -> Int {
        var duplicateNumber = -1
        if uniqNumbers.contains(number) {
            duplicateNumber = number
        } else {
            uniqNumbers.append(number)
        }
        return duplicateNumber
    }
    
}

let numsDupl3 = [2,3,7,5,1,4,7,9,8,4,5,2,34] // 7 is duplicated
let duplicate = Duplicate(numbers: numsDupl3)
print (duplicate.findDuplicatedNumber())

let numsNone = [1,2,3,4,5,6] // nothing is duplicated
let duplicate2 = Duplicate(numbers: numsNone)
print (duplicate2.findDuplicatedNumber())
