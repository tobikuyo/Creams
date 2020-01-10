//
//  IceCreamController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class IceCreamController {
    
    var flavours: [IceCream] = [
        
        // MARK: Vanilla
        IceCream(name: "Vanilla", tagName: "classic", rating: 4.3, backgroundColor: UIColor(red: 207/255, green: 200/255, blue: 174/255, alpha: CGFloat(1)), labelColor: UIColor(red: 128/255, green: 124/255, blue: 109/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 174/255, green: 181/255, blue: 207/255, alpha: CGFloat(1)), funFact: "Before milk based ice creams were introduced in 10th century, this summer treat was indeed made from ice."),
        
        // MARK: Chocolate
        IceCream(name: "Chocolate", tagName: "milk", rating: 3.9, backgroundColor: UIColor(red: 127/255, green: 98/255, blue: 82/255, alpha: CGFloat(1)), labelColor: UIColor(red: 189/255, green: 147/255, blue: 123/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 82/255, green: 111/255, blue: 127/255, alpha: CGFloat(1)), funFact: "The largest worldwide consumption of ice cream is in United States. There, one average person consumes 48 pints of ice cream per year."),
        
        // MARK: Strawberry
        IceCream(name: "Strawberry", tagName: "fairy", rating: 3.8, backgroundColor: UIColor(red: 245/255, green: 183/255, blue: 220/255, alpha: CGFloat(1)), labelColor: UIColor(red: 127/255, green: 96/255, blue: 118/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 183/255, green: 245/255, blue: 208/255, alpha: CGFloat(1)), funFact: "Ice cream recipe came to North America 250 years after it was discovered by Christopher Columbus."),
        
        // MARK: Mint
        IceCream(name: "Mint", tagName: "refreshing", rating: 3.5, backgroundColor: UIColor(red: 112/255, green: 163/255, blue: 56/255, alpha: CGFloat(1)), labelColor: UIColor(red: 59/255, green: 85/255, blue: 29/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 107/255, green: 56/255, blue: 163/255, alpha: CGFloat(1)), funFact: "Ice cream cones were invented during 1904 World's Fair in St. Louis, when large demand forced ice cream vendor to find help from nearby waffle vendor. Together they made history."),
        
        // MARK: Banana
        IceCream(name: "Banana", tagName: "loco", rating: 3.0, backgroundColor: UIColor(red: 244/255, green: 195/255, blue: 73/255, alpha: CGFloat(1)), labelColor: UIColor(red: 127/255, green: 102/255, blue: 39/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 73/255, green: 122/255, blue: 244/255, alpha: CGFloat(1)), funFact: "Continental Europe was introduced with ice cream in late 13th century with Marko Polo returned to Italy with his tales of travel in China."),
        
        // MARK: Caramel
        IceCream(name: "Caramel", tagName: "sweet", rating: 4.2, backgroundColor: UIColor(red: 214/255, green: 183/255, blue: 154/255, alpha: CGFloat(1)), labelColor: UIColor(red: 127/255, green: 112/255, blue: 96/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 154/255, green: 185/255, blue: 214/255, alpha: CGFloat(1)), funFact: "Historians remember that Alexander the Great (356-323 BC) loved to eat snow flavored with nectar and honey.")]
}
