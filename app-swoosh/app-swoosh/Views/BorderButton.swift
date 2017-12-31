//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Jayton Schmeeckle on 12/30/17.
//  Copyright © 2017 Jayton Schmeeckle. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib(){
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
