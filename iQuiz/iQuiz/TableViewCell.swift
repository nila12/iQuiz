//
//  TableViewCell.swift
//  iQuiz
//
//  Created by iGuest on 4/28/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mathimg: UIImageView!
    @IBOutlet weak var mathlabel: UILabel!
    @IBOutlet weak var mathdesclabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
