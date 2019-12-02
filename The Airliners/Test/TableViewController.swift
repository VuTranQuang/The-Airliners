//
//  TableViewController.swift
//  The Airliners
//
//  Created by VuTQ10 on 11/29/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "PlanesList", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
   
        
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellTest
    
        // Configure the cell...

        return cell
    }


}
