//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Air on 01.10.2017.
//  Copyright © 2017 Air. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
