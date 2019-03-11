//
//  CustomHomeHeaderCell.swift
//  TwoDirectionalScroller
//
//  Created by OJASWI DEWANGAN on 06/03/19.
//  Copyright © 2019 Thorn Technologies. All rights reserved.
//

import UIKit

class CustomHomeHeaderCell: UITableViewCell {

    @IBOutlet var lblHeaderName: UILabel!
    
    @IBOutlet var btnViewAll: UIButton!
    
    
    var callBackClosure: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func tapOnViewAll(_ sender: Any) {
        
        guard let buttonAction = callBackClosure else {
            return
        }
        
        buttonAction()
    }
    
}
