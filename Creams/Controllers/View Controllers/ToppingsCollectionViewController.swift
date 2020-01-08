//
//  ToppingsCollectionViewController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class ToppingsCollectionViewController: UICollectionViewController {
    
    let toppingController = ToppingController()
    
    var iceCream: IceCream?
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "OrderWithToppingShowSegue" {
            if let destinationVC = segue.destination as? OrderWithToppingViewController,
                let indexPath = collectionView.indexPathsForSelectedItems?.first?.item,
                let iceCream = iceCream {
                destinationVC.topping = toppingController.toppings[indexPath]
                destinationVC.iceCream = iceCream
                destinationVC.view.backgroundColor = iceCream.backgroundColor
            }
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return toppingController.toppings.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToppingCell", for: indexPath) as? ToppingsCollectionViewCell else { return UICollectionViewCell() }
        
        let topping = toppingController.toppings[indexPath.item]
        cell.topping = topping
        
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        var topping = toppingController.toppings[indexPath.item]
        topping.hasBeenAdded.toggle()
        toppingController.toppings[indexPath.item] = topping
        collectionView.reloadData()
        return true
    }
}
