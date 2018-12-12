//
//  CurrencyTxtField.swift
//  Window Shopper
//
//  Created by Banji Adewumi on 12/12/18.
//  Copyright © 2018 Banji Adewumi. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }

}

