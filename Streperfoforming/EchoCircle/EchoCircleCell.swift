//
//  EchoCircleCell.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class EchoCircleCell: UICollectionViewCell {
    @IBOutlet weak var visualToneFlow: UIImageView!
    
    
    @IBOutlet weak var creativeJourneyFlow: UIImageView!
    
    @IBOutlet weak var artSpiritWave: UILabel!
    
    
    
    @IBOutlet weak var sceneMoodFlow: UIButton!
    
    @IBOutlet weak var performExpression: UILabel!
    
    
    @IBOutlet weak var streetVibration: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        performExpression.layer.cornerRadius = 15
        performExpression.layer.masksToBounds = true
        
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        
    }

}
