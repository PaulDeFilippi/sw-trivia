//
//  PersonAPI.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 2/3/19.
//  Copyright © 2019 Paul Defilippi. All rights reserved.
//

import Foundation

class PersonApi {
    
    func getRandomPersonUrlSession() {
        // 2
        guard let url = URL(string: PERSON_URL) else { return }
        // 1
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            // 6
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            // 7
            guard let data = data else { return }
            // 8 set up do catch
            do {
                // 10 set up try
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                // 11 set up the json type as String : Any as the above jsonObject returns Any
                guard let json = jsonAny as? [String: Any] else { return }
                print(json)
                //15 call parse funtion here and pass in the json object because we made sure that we were getting back json in the above task - we checked the respone that we set up in steps 6, 7 and 8 by finally writing a guard statement where we let json = jsonAny etc.
                //self.parsePersonManual(json: json)
                // 18 - the commented line above now becomes let person = self.parsePersonManual(json: json) so that we can store the data we get back from calling parsePersonManually() in the person variable
                let person = self.parsePersonManual(json: json)
                
                // 19 - now we can use the instance of person
                print(person.name)
                print(person.birthYear)
                print(person.filmsUrls)
                
                
            } catch {
                // 9 catch and handle error if thrown
                debugPrint(error.localizedDescription)
                return
            }
//            print("Data = \(data)")
//            print("Response = \(response)")
        }
        // 3
        task.resume()
    }
    
    // 14 set up func to parse person manually
    private func parsePersonManual(json: [String: Any]) -> Person {
        // example of how this function works
//        let names = ["nameOne":"PaulD", "nameTwo":"TomB"]
//        let paul = names["namesOne"]
//        let tom = names["namesTwo"]
        
        // 16 - here is how we get into the actual json object to get the values from the dictionary [String: Any] - we need to reference postman or the actual json to figure out the naming convention - ie, the key "name" has to match what we are getting back in the json - we cast each value as the type we expect - as? means that is an optional of that type s we need to give it a default value in case we get back nothing - hense String ?? ""
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hair = json["hair_color"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeworldUrl = json["homeworld"] as? String ?? ""
        let filmUrls = json["films"] as? [String] ?? [String]()
        let vehicleUrls = json["vehicles"] as? [String] ?? [String]()
        let starshipUrls = json["starships"] as? [String] ?? [String]()
        
        // 17 set up initializer so we can use all the above variables we wset up - we do this by creating an instance of our Person struct
        let person = Person(name: name, height: height, mass: mass, hair: hair, birthYear: birthYear, gender: gender, homeworldUrl: homeworldUrl, filmsUrls: filmUrls, vehicleUrls: vehicleUrls, starshipsUrls: starshipUrls)
        // return person and add the -> Person to our function above
        return person
        
    }
    
}
