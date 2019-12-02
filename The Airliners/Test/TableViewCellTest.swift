//
//  TableViewCellTest.swift
//  The Airliners
//
//  Created by VuTQ10 on 11/29/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class TableViewCellTest: UITableViewCell {

    @IBOutlet weak var keyLbl: UILabel!
    @IBOutlet weak var valueLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func binding(item: Test) {
        self.keyLbl.text = item.manu[0]

    }
}
