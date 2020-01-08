//
//  OrderWithToppingViewController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class OrderWithToppingViewController: UIViewController {
    
    @IBOutlet weak var iceCreamImage: UIImageView!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var flavourLabel: UILabel!
    @IBOutlet weak var toppingImage: UIImageView!
    @IBOutlet weak var toppingLabel: UILabel!
    @IBOutlet weak var payButton: UIButton!
    
    var iceCream: IceCream? 
    var topping: Topping?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let iceCream = iceCream,
            let topping = topping {
            iceCreamImage.image = UIImage(named: iceCream.name.lowercased())
            tagLabel.text = iceCream.tagName
            tagLabel.textColor = iceCream.labelColor
            flavourLabel.text = iceCream.name
            toppingImage.image = UIImage(named: topping.name.lowercased())
            toppingLabel.text = topping.name
            payButton.setTitle("PAY £\(String(format: "%.2f", iceCream.price))", for: .normal)
        }
    }
    
    
    @IBAction func payButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Payment was successfull", message: "Your order will be ready in 3 minutes", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension OrderWithToppingViewController: FlavourChoiceDelegate {
    func iceCream(choice: IceCream) {
        iceCream = choice
    }
}
