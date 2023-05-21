//
//  CharacterTableViewCell.swift
//  PC_2v
//
//  Created by Alex Parco on 20/05/23.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelStatus: UILabel!
    
    @IBOutlet weak var characterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
