//
//  Constants.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 1/19/19.
//  Copyright © 2019 Paul Defilippi. All rights reserved.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor

let URL_BASE = "https://swapi.co/api/"

// 25 let PERSON_URL = URL_BASE + "people/1" - this was hardcoding the 1 to return the first person from the api
// we need to remove from the end so we can randomize what we get back from hitting the randomize button
let PERSON_URL = URL_BASE + "people/"

// 20 = create typealias for person completion
typealias PersonResponseCompletion = (Person?) -> Void
