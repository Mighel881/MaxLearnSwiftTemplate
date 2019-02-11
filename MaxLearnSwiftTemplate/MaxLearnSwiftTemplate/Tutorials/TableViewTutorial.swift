//
//  TableViewTutorial.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 01.02.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

import Foundation
import UIKit

class TableViewTutorial : UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var table: UITableView!;
    
    override func viewDidLoad() {
        table.backgroundColor = hexStringToUIColor(hex: "#212121")
    }
    
    var namen = ["Max","Charlotte","Sissy","Miri","Imma","Christian"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return namen.count }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell2;
        
        cell?.namelbl.text = namen[indexPath.row];
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {return 70}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        
        print(namen[indexPath.row]);
        
        let alert = UIAlertController(title: namen[indexPath.row], message: "", preferredStyle: .alert);
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (UIAlertAction) in }));
        
    
        self.present(alert, animated: true);
        
    }
    
}
