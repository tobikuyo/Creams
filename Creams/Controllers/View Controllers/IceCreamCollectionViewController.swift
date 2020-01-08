//
//  IceCreamCollectionViewController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class IceCreamCollectionViewController: UICollectionViewController {
    
    let iceCreamController = IceCreamController()

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IceCreamDetailShowSegue" {
            if let destinationVC = segue.destination as? IceCreamDetailViewController,
                let indexPath = collectionView.indexPathsForSelectedItems?.first?.item {
                destinationVC.iceCream = iceCreamController.flavours[indexPath]
            }
        }
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iceCreamController.flavours.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IceCreamCell", for: indexPath) as? IceCreamCollectionViewCell else { return UICollectionViewCell() }
    
        let flavour = iceCreamController.flavours[indexPath.item]
        cell.iceCream = flavour
        cell.backgroundColor = flavour.backgroundColor
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
