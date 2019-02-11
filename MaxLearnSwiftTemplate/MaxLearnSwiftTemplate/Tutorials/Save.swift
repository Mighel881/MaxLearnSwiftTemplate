//
//  Save.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 31.01.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class Save: UIViewController{
    
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        if let savedText = UserDefaults.standard.object(forKey: "savedText")as? String{
            lbl.text = savedText
        }
    }
    
    @IBAction func saveText(_ sender: Any) {
       UserDefaults.standard.set(text.text, forKey: "savedText")
    }
}
