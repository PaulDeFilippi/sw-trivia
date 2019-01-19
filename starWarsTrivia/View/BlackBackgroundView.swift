//
//  BlackBackgroundView.swift
//  starWarsTrivia
//
//  Created by Paul Defilippi on 1/19/19.
//  Copyright © 2019 Paul Defilippi. All rights reserved.
//

import UIKit

class BlackBackgroundView: UIView {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

class BlackBackgroundButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
