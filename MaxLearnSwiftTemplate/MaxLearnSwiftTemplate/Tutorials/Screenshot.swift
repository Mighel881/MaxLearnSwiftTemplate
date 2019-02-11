//
//  Screenshot.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 01.02.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class TakeScreenshot : UIViewController{
    @IBOutlet weak var image: UIImageView!;
    @IBAction func takeScreenshot(_ sender: Any) {
        let bounds = UIScreen.main.bounds;
        UIGraphicsBeginImageContextWithOptions(bounds.size, true, 0.0);
        self.view.drawHierarchy(in: bounds, afterScreenUpdates: false);
        let img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        image.image = img;
    }
}
