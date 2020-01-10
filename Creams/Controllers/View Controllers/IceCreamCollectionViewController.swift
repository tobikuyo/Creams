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
    
        return cell
    }
}
