//
//  StreetMapCell.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class StreetMapCell: UICollectionViewCell {

    @IBOutlet weak var artRhythmist: UIButton!
    
    
    @IBOutlet weak var creativeHarmony: UIImageView!
    
    @IBOutlet weak var artSpirit: UIImageView!
    
    @IBOutlet weak var stageMoment: UIButton!
    
    
    @IBOutlet weak var urbanEcho: UILabel!
    
    
    @IBOutlet weak var creativeFusion: UILabel!
    
    @IBOutlet weak var urbanExpressionFlow: UIButton!
    
    
    @IBOutlet weak var stageDream: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        creativeHarmony.layer.cornerRadius = 12
        creativeHarmony.layer.masksToBounds = true
        
        artSpirit.layer.cornerRadius = 20
        artSpirit.layer.masksToBounds = true
        
        artRhythmist.layer.cornerRadius = 15
        artRhythmist.layer.masksToBounds = true
        
        
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
    }

}
