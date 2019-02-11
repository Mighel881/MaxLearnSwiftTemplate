//
//  Vc1.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 30.01.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class Vc1: UIViewController{
    @IBAction func changeViewController(_ sender: Any) {let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil); let newViewController = storyBoard.instantiateViewController(withIdentifier:"ViewController2"); self.present(newViewController, animated: true)}}
