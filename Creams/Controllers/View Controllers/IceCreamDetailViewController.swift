//
//  IceCreamDetailViewController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class IceCreamDetailViewController: UIViewController {
    
    @IBOutlet weak var iceCreamImage: UIImageView!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var flavourLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var addFlavourButton: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var scrollView: UIView!
    
    var iceCream: IceCream?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let iceCream = iceCream {
            iceCreamImage.image = UIImage(named: iceCream.name.lowercased())
            tagLabel.text = iceCream.tagName
            tagLabel.textColor = iceCream.labelColor
            flavourLabel.text = iceCream.name
            ratingLabel.text = String(iceCream.rating)
            textView.text = iceCream.reasonToBuy
            addFlavourButton.backgroundColor = iceCream.complimentaryColor
            buyNowButton.backgroundColor = iceCream.complimentaryColor
            view.backgroundColor = iceCream.backgroundColor
            scrollView.backgroundColor = iceCream.backgroundColor
        }
    }
    
    
    @IBAction func addFlavourTapped(_ sender: Any) {
    }
    
    @IBAction func buyNowTapped(_ sender: Any) {
    }
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToppingsShowSegue" {
            if let destinationVC = segue.destination as? ToppingsCollectionViewController,
                let iceCream = iceCream {
                destinationVC.collectionView.backgroundColor = iceCream.backgroundColor
            }
        } else if segue.identifier == "OrderShowSegue" {
            
        }
    }
}
