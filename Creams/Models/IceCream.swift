//
//  IceCream.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

struct IceCream {
    let name: String
    let tagName: String
    let rating: Double
    let backgroundColor: UIColor
    let labelColor: UIColor
    let complimentaryColor: UIColor
    var topping: Topping? = nil
    let funFact: String
    
    var price: Double {
        let price = 1.50 + (topping?.price ?? 0.0)
        return price
    }
}
