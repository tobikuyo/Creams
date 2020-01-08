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
        }
    }
}

// MARK: Convert RBG to HEX code

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
