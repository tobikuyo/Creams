//
//  OrderViewController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var iceCreamImage: UIImageView!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var flavourLabel: UILabel!
    @IBOutlet weak var payButton: UIButton!
    
    var iceCream: IceCream?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let iceCream = iceCream {
            view.backgroundColor = iceCream.backgroundColor
            iceCreamImage.image = UIImage(named: iceCream.name.lowercased())
            tagLabel.text = iceCream.tagName
            tagLabel.textColor = iceCream.labelColor
            flavourLabel.text = iceCream.name
            payButton.setTitle("PAY £\(String(format: "%.2f", iceCream.price))", for: .normal)
            payButton.backgroundColor = iceCream.complimentaryColor
        }
    }
    
    @IBAction func payButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Payment was successful", message: "Your ice cream will be ready in 3 minutes", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { (action) in
            self.performSegue(withIdentifier: "ThankYouTooShowSegue", sender: self)
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
