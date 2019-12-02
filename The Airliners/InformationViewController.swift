//
//  InformationViewController.swift
//  The Airliners
//
//  Created by VuTQ10 on 11/29/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var imagePlanes: UIImageView!
    @IBOutlet weak var longDescription: UITextView!
    
    @IBOutlet weak var nationalOrigin: UILabel!
    @IBOutlet weak var manufacturer: UILabel!
    @IBOutlet weak var firstFly: UILabel!
    @IBOutlet weak var produced: UILabel!
    @IBOutlet weak var numberBuild: UILabel!
    @IBOutlet weak var status: UILabel!
    var line: Airliner?
    var items: Airliner?
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePlanes.image = UIImage(named: (items?.imagePlanes)! + ".jpg")
        longDescription.text = line?.longDescrip
        nationalOrigin.text = line?.nationalOrigin
        manufacturer.text = line?.manufacturer
        firstFly.text = line?.firstFly
        produced.text = line?.produced
        numberBuild.text = line?.numberBuild
        status.text = line?.status
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.alpha = 0
        
    }
    

   
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
         self.navigationController?.navigationBar.alpha = 1
    }
    
}
