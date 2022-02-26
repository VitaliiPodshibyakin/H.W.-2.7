//
//  DataManager.swift
//  H.W.-2.7
//
//  Created by Виталий Подшибякин on 26.02.2022.
//


class DataManager {
    
    static func getPerson() -> [Person] {
        
        var firstNames = ["John", "Aaron", "Tim", "Ted", "Steven"]
        var lastNames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
        var phoneNumbers = ["101", "102", "103", "104", "105"]
        
        var persons: [Person] = []
        
        for _ in 1...5 {
            let firstName = firstNames.first
            firstNames.removeFirst()
            firstNames.shuffle()
            let lastName = lastNames.first
            lastNames.removeFirst()
            lastNames.shuffle()
            let phoneNumber = phoneNumbers.first
            phoneNumbers.removeFirst()
            phoneNumbers.shuffle()
            let person = Person(
                firstName: firstName ?? "",
                lastName: lastName ?? "",
                phoneNumber: phoneNumber ?? "",
                mail: "\(firstName ?? "")\(lastName ?? "")@gmail.com"
            )
            persons.append(person)
        }
        return persons
    }
    
}
