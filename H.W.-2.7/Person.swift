//
//  Person.swift
//  H.W.-2.7
//
//  Created by Виталий Подшибякин on 25.02.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let mail: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
