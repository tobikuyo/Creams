//
//  ToppingsCollectionViewCell.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class ToppingsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var toppingLabel: UILabel!
    @IBOutlet weak var toppingImage: UIImageView!
    @IBOutlet weak var addedButton: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    var toppingsCount = 0
    var toppings: ToppingController?
    var topping: Topping? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        if let topping = topping {
            toppingLabel.text = topping.name
            toppingImage.image = UIImage(named: topping.name.lowercased())
            priceLabel.text = "£\(String(format: "%.2f", topping.price))"
            addedButton.image = topping.hasBeenAdded ? UIImage(named: "check") : UIImage(named: "plus")
        }
    }
}
