//
//  IceCreamCollectionViewCell.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

protocol FlavourChoiceDelegate {
    func iceCream(choice: IceCream)
}

class IceCreamCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var flavourLabel: UILabel!
    @IBOutlet weak var iceCreamImage: UIImageView!
    
    var delegate: FlavourChoiceDelegate?
    
    var iceCream: IceCream? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        if let iceCream = iceCream {
            tagLabel.text = iceCream.tagName
            flavourLabel.text = iceCream.name
            iceCreamImage.image = UIImage(named: iceCream.name.lowercased())
            tagLabel.textColor = iceCream.labelColor
            delegate?.iceCream(choice: iceCream)
        }
    }
}
