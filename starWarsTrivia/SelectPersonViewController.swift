//
//  ViewController.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 11/18/18.
//  Copyright © 2018 Paul Defilippi. All rights reserved.
//

import UIKit

class SelectPersonViewController: UIViewController {
    
    // 19 - after we check to make sure we are getting back what we need from json we can configure IBOutlets
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    
    // 4
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 5
        //personApi.getRandomPersonUrlSession()
        // 23 - step 5 above becomes what we have below - we incorporate the completion handler into the mix that we created in the getRandomPersonUrlSession() function
        // we created the completion handler with an optional Person object so we can handle any errors if the api call fails
        personApi.getRandomPersonUrlSession { (person) in
            // need to unwrap person that was setup as an optional in the completion handler
            if let person = person {
                print(person.name)
                
            }
        }
    }
}

