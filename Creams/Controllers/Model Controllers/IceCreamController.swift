//
//  IceCreamController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 07/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class IceCreamController {
    
    var flavours = [
        
        // MARK: Vanilla
        IceCream(name: "Vanilla", tagName: "classic", rating: 4.3, backgroundColor: UIColor(red: 207/255, green: 200/255, blue: 174/255, alpha: CGFloat(1)), labelColor: UIColor(red: 38/255, green: 54/255, blue: 19/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 174/255, green: 181/255, blue: 207/255, alpha: CGFloat(1)), reasonToBuy: "Calcium is a key ingredient in ice cream and calcium-rich foods help keep your body strong and metabolism running well. A.K.A. eating ice cream = weight-loss diet. We would choose eating ice cream over running on the treadmill any day of the week!"),
        
        // MARK: Chocolate
        IceCream(name: "Chocolate", tagName: "milk", rating: 3.9, backgroundColor: UIColor(red: 127/255, green: 98/255, blue: 82/255, alpha: CGFloat(1)), labelColor: UIColor(red: 60/255, green: 46/255, blue: 39/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 82/255, green: 111/255, blue: 127/255, alpha: CGFloat(1)), reasonToBuy: "Eating ice cream is essentially putting milk and cream into your body; these ingredients are great sources of calcium, vitamins A and D, riboflavin, and phosphorus. Depending on the flavor of ice cream, you may be getting even more nutrients. Flavors like vanilla bean and dark chocolate are loaded with antioxidants. Just imagine how healthy a chocolate-vanilla swirl ice cream is ?"),
        
        // MARK: Strawberry
        IceCream(name: "Strawberry", tagName: "fairy", rating: 3.8, backgroundColor: UIColor(red: 245/255, green: 183/255, blue: 220/255, alpha: CGFloat(1)), labelColor: UIColor(red: 127/255, green: 96/255, blue: 118/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 183/255, green: 245/255, blue: 208/255, alpha: CGFloat(1)), reasonToBuy: "Do you feel tired first thing in the morning? Try waking up with a scoop of ice cream! No, we’re not joking. Ice cream can stimulate your brain and give you a boost in the morning thanks to its vitamins and minerals. It also tends to increase dopamine levels in the body, which makes you feel more awake and alert. Goodbye, coffee- hello, ice cream!"),
        
        // MARK: Mint
        IceCream(name: "Mint", tagName: "refreshing", rating: 3.5, backgroundColor: UIColor(red: 112/255, green: 163/255, blue: 56/255, alpha: CGFloat(1)), labelColor: UIColor(red: 87/255, green: 127/255, blue: 45/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 107/255, green: 56/255, blue: 163/255, alpha: CGFloat(1)), reasonToBuy: "Ice cream is a form of fermented dairy and fermented foods help protect your body from gastrointestinal and respiratory infections. You’ll see lactose (dairy) ingredients in a lot of probiotics that people take to help boost their immune systems because the stronger your gut and respiratory systems, the stronger your immune system will be. Let’s be real, eating a scoop of ice cream sounds much more exciting than taking a probiotic pill every day!"),
        
        // MARK: Banana
        IceCream(name: "Banana", tagName: "loco", rating: 3.0, backgroundColor: UIColor(red: 244/255, green: 195/255, blue: 73/255, alpha: CGFloat(1)), labelColor: UIColor(red: 127/255, green: 108/255, blue: 35/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 73/255, green: 122/255, blue: 244/255, alpha: CGFloat(1)), reasonToBuy: "Although ice cream is considered a great comfort food, it can literally make you happier. It helps produce serotonin, the feel-good hormone in our bodies. So, if you’re feeling down or having a bad day, ice cream is a great way to pick yourself back up! Make sure you always have some stocked up in your freezer."),
        
        // MARK: Caramel
        IceCream(name: "Caramel", tagName: "sweet", rating: 4.2, backgroundColor: UIColor(red: 214/255, green: 183/255, blue: 154/255, alpha: CGFloat(1)), labelColor: UIColor(red: 127/255, green: 112/255, blue: 96/255, alpha: CGFloat(1)), complimentaryColor: UIColor(red: 154/255, green: 185/255, blue: 214/255, alpha: CGFloat(1)), reasonToBuy: "Not only can eating ice cream be good for you but buying ice cream can also be good for you and local businesses, your local economy, and the farm-to-table movement! By purchasing local products, you’re also ensuring that what you’re getting is fresher and healthier than what you would find in a big-name grocery store. So, your healthy ice cream can be even healthier when buying local!")]
}
