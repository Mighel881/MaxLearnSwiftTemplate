//
//  ViewController.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 22.01.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonClicked(_ sender: Any) {
        label.text = "Hallo"
    }
    
    
}

