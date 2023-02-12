//
//  MemberTableViewCell.swift
//  TableView
//  
//  Created by Tokoroteen on 2023/02/12
//  
//

import UIKit

class MemberTableViewCell: UITableViewCell {
    
    //二つのパーツを定義！
    @IBOutlet var memberNameLabel: UILabel!
    @IBOutlet var memberImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
