//
//  File.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 07.02.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import UIKit

class TouchRecognize:UIViewController{
    
    @IBOutlet weak var img: UIImageView!;
    
    override func viewDidLoad() {
        
        img.isUserInteractionEnabled = true;
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(deletOnLongTouch));
        img.addGestureRecognizer(longPressRecognizer);
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(scaleImg));
        img.addGestureRecognizer(pinch);
        
        let rotate1 = UIRotationGestureRecognizer(target: self, action: #selector(rotateHead));
        img.addGestureRecognizer(rotate1);
        
        let myPanGestureRecognizer1 = UIPanGestureRecognizer(target: self, action: #selector(moveHead));
        myPanGestureRecognizer1.minimumNumberOfTouches = 1;
        myPanGestureRecognizer1.maximumNumberOfTouches = 1;
        img.addGestureRecognizer(myPanGestureRecognizer1);
        
    }
    
    @objc func deletOnLongTouch(sender: UIRotationGestureRecognizer){
            if let myView = sender.view {
                myView.removeFromSuperview();
        }
    }
    
    @objc func rotateHead(sender: UIRotationGestureRecognizer){
            if sender.state == .began || sender.state == .changed{
                sender.view?.transform = (sender.view?.transform.rotated(by: sender.rotation))!;
                sender.rotation = 0;
        }
    }
    
    @objc func moveHead(recognizer: UIPanGestureRecognizer){
        let translation = recognizer.translation(in: view);
            if let myView = recognizer.view {
                myView.center = CGPoint(x: myView.center.x + translation.x, y: myView.center.y + translation.y);
            }
        recognizer.setTranslation(CGPoint(x: 0, y: 0), in: view);
    }
    
    @objc func scaleImg(sender: UIPinchGestureRecognizer){
            if let myView = sender.view {
                myView.transform = CGAffineTransform(scaleX: sender.scale , y: sender.scale );
            }
    }
}
