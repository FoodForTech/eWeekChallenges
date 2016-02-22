//: Playground - noun: a place where people can play

class NamedOne {
    
    var firstName: String
    var lastName: String
    var fullName: String {
        get {
            return "\(self.firstName) \(self.lastName)"
        }
        set(newFullName) {
            let parsedFullName = newFullName.characters.split{$0 == " "}.map(String.init)
            if parsedFullName.count > 1 {
                self.firstName = parsedFullName[0]
                self.lastName = parsedFullName[1]
            }
        }
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = firstName + lastName;
    }
    
}

// testing object
var namedOne = NamedOne(firstName: "Naomi", lastName: "Wang")

namedOne.firstName = "John"
namedOne.lastName = "Doe"
print(namedOne.firstName)
print(namedOne.lastName)
print(namedOne.fullName)


namedOne.fullName = "Bill Smith"
namedOne.firstName // -> "Bill"
namedOne.lastName  // -> "Smith"
print(namedOne.firstName)
print(namedOne.lastName)
print(namedOne.fullName)

namedOne.fullName = "Tom" // -> no : lastName missing
namedOne.fullName = "TomDonnovan" // -> no : no space between first & last names
namedOne.fullName // -> "Bill Smith" (unchanged)
print(namedOne.firstName)
print(namedOne.lastName)
print(namedOne.fullName)
