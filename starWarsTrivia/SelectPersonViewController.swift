//
//  ViewController.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 11/18/18.
//  Copyright © 2018 Paul Defilippi. All rights reserved.
//

import UIKit

class SelectPersonViewController: UIViewController {
    
    // 20 - after we check to make sure we are getting back what we need from json we can configure IBOutlets
    
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
        personApi.getRandomPersonUrlSession()
        

    }


}

