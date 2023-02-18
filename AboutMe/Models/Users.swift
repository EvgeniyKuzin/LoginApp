//
//  Users.swift
//  AboutMe
//
//  Created by Evgeniy Kuzin on 18.02.2023.
//

import Foundation

struct User {
    let login: String
    let password: String

    static let currentUser =
    User(
        login: "User",
        password: "1111"
    )
}

