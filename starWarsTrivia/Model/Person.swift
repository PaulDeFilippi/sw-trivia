//
//  Person.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 2/19/19.
//  Copyright © 2019 Paul Defilippi. All rights reserved.
//

import Foundation

// 12 create struct from json respone - can look at call in Postman to determine
// what parameters you need - the call ws set up in the PersonAPI.swift file from the url passed into the getRandomPersonUrlSession() func

struct Person {
    let name: String
    let height: String
    let mass: String
    let hair: String
    let birthYear: String
    let gender: String
    let homeworldUrl: String
    let filmsUrls: [String]
    let vehicleUrls: [String]
    let starshipsUrls: [String]
}
