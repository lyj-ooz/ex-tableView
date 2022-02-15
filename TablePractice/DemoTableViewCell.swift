//
//  DemoTableViewCell.swift
//  TablePractice
//
//  Created by YJ on 2022/02/15.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
