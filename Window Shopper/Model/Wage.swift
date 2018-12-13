//
//  Wage.swift
//  Window Shopper
//
//  Created by Banji Adewumi on 12/13/18.
//  Copyright © 2018 Banji Adewumi. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
