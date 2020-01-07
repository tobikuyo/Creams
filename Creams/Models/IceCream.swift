//
//  IceCream.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import Foundation

struct IceCream {
    let name: String
    let tagName: String
    let rating: Double
    let topping: Topping? = nil
    
    var price: Double {
        let price = 1.50 + (topping?.price ?? 0.0)
        return price
    }
}
