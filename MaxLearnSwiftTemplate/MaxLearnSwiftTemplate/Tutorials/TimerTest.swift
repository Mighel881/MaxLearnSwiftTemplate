//
//  LodingTest.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 01.02.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class TimerTest : UIViewController{ @IBOutlet weak var timerlabl: UILabel!; var t = Timer(); var zahl = 0; override func viewDidLoad() {t = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(addZahl), userInfo: nil, repeats: true)}; @objc func addZahl(){zahl += 1; timerlabl.text = String(zahl); if(zahl == 10){t.invalidate()}}}
