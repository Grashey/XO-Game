//
//  MainViewController.swift
//  XO-game
//
//  Created by Aleksandr Fetisov on 30.12.2019.
//  Copyright © 2019 plasmon. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func vsPlayerButton(_ sender: UIButton) {
    }
    
    @IBAction func vsCompButton(_ sender: UIButton) {
    }

    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vsCompSegue" {
            let vc = segue.destination as? GameViewController
            vc?.isComp = true
        }
    }
}
