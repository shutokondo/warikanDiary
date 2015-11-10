//
//  groupTableViewCell.swift
//  warikanDiary
//
//  Created by 根東秀都 on 2015/10/15.
//  Copyright © 2015年 shuto kondo. All rights reserved.
//

import UIKit

class groupTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
