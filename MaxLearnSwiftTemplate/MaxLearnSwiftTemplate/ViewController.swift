//
//  ViewController.swift
//  MaxLearnSwiftTemplate
//
//  Created by Max Schneider on 08.02.19.
//
// MaxLearn für Swift
//
// YouTube: https://www.youtube.com/channel/UCoMhmY8UfotbuR1OhATjIvA?view_as=subscriber
// Instagram: https://www.instagram.com/maxschneider.codes/?hl=de


import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var previews =
            ["Button&Label"
            ,"UIAlertController"
            ,"Open Website"
            ,"EnterText"
            ,"Photos"
            ,"Random"
            ,"UserDefaults"
            ,"Tabelview"
            ,"Timertest"
            ,"Screenshot"
            ,"Gesture"]
    
    override func viewDidLoad() {
        table.backgroundColor = hexStringToUIColor(hex: "#212121")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return previews.count }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell2;
        
        cell?.namelbl.text = previews[indexPath.row];
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {return 70}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath) {
        if(indexPath.row == 2){
                openUrl("https://www.youtube.com/channel/UCoMhmY8UfotbuR1OhATjIvA/videos")
            }else if(indexPath.row == 1){
                
                let alert = UIAlertController(title: "🐱 vs 🐶", message: "Hund oder Katze ?", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "🐶", style: .default, handler: { (UIAlertAction) in
                    print("I like 🐶")
                }))
                
                alert.addAction(UIAlertAction(title: "🐱", style: .default, handler: { (UIAlertAction) in
                    print("I like 🐱")
                }))
                
                alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (UIAlertAction) in
                    print("clicked cancel")
                }))
                
                self.present(alert, animated: true)
                
            }else{
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: previews[indexPath.row])
                self.navigationController?.pushViewController(newViewController, animated: true)
            }
        
    }

    func openUrl(_ urlString:String) {
        let url = URL(string: urlString)!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
