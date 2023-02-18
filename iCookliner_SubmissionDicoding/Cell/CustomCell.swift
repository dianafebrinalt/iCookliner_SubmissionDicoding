//
//  CustomCell.swift
//  iCookliner_SubmissionDicoding
//
//  Created by Diana Febrina Lumbantoruan on 12/06/21.
//

import UIKit

class CustomCell: UITableViewCell {


    @IBOutlet weak var imageObject: UIImageView!
    @IBOutlet weak var nameOfObject: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
