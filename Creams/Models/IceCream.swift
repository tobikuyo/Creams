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
    let flavour: Flavour
    let topping: Topping
    
    var price: Double {
        let price = flavour.price + topping.price
        return price
    }
}
