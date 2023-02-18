//
//  Person.swift
//  AboutMe
//
//  Created by Evgeniy Kuzin on 18.02.2023.
//

import Foundation

struct Person {
    let name: String
    let surName: String
    let age: Int
    let profession: String
    let biography: String
    
    static let currentPerson = Person(
        name: "Evgeniy",
        surName: "Kuzin",
        age: 37,
        profession: "engineer",
        biography: "Born in Kazakhstan, spent my childhood in the Czech Republic. I studied in Tula and now I work in Moscow."
    )
}


