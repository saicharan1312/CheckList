//
//  PickIconTableViewCell.swift
//  CheckList
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import UIKit

class PickIconTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var iconName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
