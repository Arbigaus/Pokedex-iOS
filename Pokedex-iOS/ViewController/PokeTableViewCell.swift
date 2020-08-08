//
//  PokeTableViewCell.swift
//  Pokedex-iOS
//
//  Created by Gerson Arbigaus on 07/08/20.
//  Copyright © 2020 Gerson Arbigaus. All rights reserved.
//

import UIKit

class PokeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backGroundView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundView?.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
