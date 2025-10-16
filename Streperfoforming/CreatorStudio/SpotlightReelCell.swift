//
//  SpotlightReelCell.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit
struct AudienceInteraction {
    let type: InteractionType
    let performerId: String
    let timestamp: Date
}


class SpotlightReelCell: UICollectionViewCell {

    @IBOutlet weak var visualSoul: UILabel!
    
    @IBOutlet weak var streetEnergy: UIButton!
    
    
    @IBOutlet weak var urbanDream: UIButton!
    
    @IBOutlet weak var stageJourney: UIImageView!
    
    @IBOutlet weak var urbanExpressionist: UIView!
    
    @IBOutlet weak var creativeBlend: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        visualSoul.layer.cornerRadius = 12
        visualSoul.layer.masksToBounds = true
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 12
        
        
        streetEnergy.layer.masksToBounds = true
        streetEnergy.layer.cornerRadius = 12
    }

}
