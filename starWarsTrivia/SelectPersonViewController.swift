//
//  ViewController.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 11/18/18.
//  Copyright © 2018 Paul Defilippi. All rights reserved.
//

import UIKit

class SelectPersonViewController: UIViewController {
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personApi.getRandomPersonUrlSession()
        

    }


}

