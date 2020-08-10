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
    @IBOutlet weak var pokeIdLabel: UILabel!    
    @IBOutlet weak var pokeNameLabel: UILabel!
    @IBOutlet weak var pokeImageView: UIImageView!
    
    @IBOutlet weak var pokeBadgeView1: UIView!
    @IBOutlet weak var pokeBadgeLabel1: UILabel!
    @IBOutlet weak var pokeBadgeImg1: UIImageView!
    
    @IBOutlet weak var pokeBadgeStackView2: UIView!
    @IBOutlet weak var pokeBadgeView2: UIView!
    @IBOutlet weak var pokeBadgeLabel2: UILabel!
    @IBOutlet weak var pokeBadgeImg2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()   
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
