//
//  ViewController.swift
//  The Airliners
//
//  Created by VuTQ10 on 11/26/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var items = [Airliner]()
    var infomation = [Airliner]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "PlanesList", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        for dict in myDict?.allValues as! [NSDictionary] {
            infomation.append(Airliner(nationalOrigin: dict["nationalOrigin"] as! String, manufacturer: dict["manufacturer"] as! String, firstFly: dict["firesFlight"] as! String, produced: dict["produced"] as! String, numberBuild: dict["numberBuilt"] as! String, status: dict["status"] as! String, longDescrip: dict["longDescrip"] as! String))
        }
        for dic in myDict?.allValues as! [NSDictionary] {
            items.append(Airliner(namePlanes: dic["name"] as! String, shortInfo: dic["shortInfo"] as! String, imagePlanes: dic["image"] as! String))
        }
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.binding(item: items[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let infController = storyboard?.instantiateViewController(withIdentifier: "infController") as! InformationViewController
        infController.items = items[indexPath.row]
        infController.line = infomation[indexPath.row]
        
        self.navigationController?.pushViewController(infController, animated: true)
        
    }
    
}
