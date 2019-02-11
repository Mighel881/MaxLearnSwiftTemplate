//
//  Textmitbutton.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 29.01.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class Textmitbutton : UIViewController{

    @IBOutlet weak var textt: UITextField!
    
    @IBOutlet weak var lbll: UILabel!
    
    @IBAction func getText(_ sender: Any) {
        lbll.text = textt.text
    }
}
