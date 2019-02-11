//
//  RND.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 06.02.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class RND : UIViewController{
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func randomZahl(_ sender: Any) {
        lbl.text = String(Int.random(in: 0...10))
    }
    
    
}
