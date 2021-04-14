//
//  Person.swift
//  PersonsListApp
//
//  Created by Теона Магай on 13.04.2021.
//

struct Person {
    let firstName: String
    let secondName: String
    let phoneNumber: String
    let emailAddress: String
    
    var personName: String {
        "\(firstName) \(secondName)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let data = DataManager()
        
        let firstNames = data.firstNames.shuffled()
        let secondNames = data.secondNames.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        let emailAddresses = data.emailAddresses.shuffled()
        
        let minCount = data.firstNames.count
        
        if minCount > 0 {
            for index in 0...minCount - 1 {
                persons.append(Person(firstName: firstNames[index], secondName: secondNames[index], phoneNumber: phoneNumbers[index], emailAddress: emailAddresses[index]))
            }
        }
        return persons
    }

}



