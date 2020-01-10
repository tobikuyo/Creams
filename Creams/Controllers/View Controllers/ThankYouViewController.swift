//
//  ThankYouViewController.swift
//  Creams
//
//  Created by Tobi Kuyoro on 10/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit

class ThankYouViewController: UIViewController {

    @IBAction func doneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToIceCreamCV", sender: self)
    }
}
