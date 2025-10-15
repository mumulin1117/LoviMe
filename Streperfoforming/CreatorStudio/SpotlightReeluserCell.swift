//
//  SpotlightReeluserCell.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class SpotlightReeluserCell: UICollectionViewCell {

    @IBOutlet weak var creativeTone: UIImageView!
    
    
    @IBOutlet weak var cityTone: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        streetEcho()
    }

    
    private func streetEcho()  {
        creativeTone.layer.masksToBounds = true
        
        creativeTone.layer.cornerRadius = 32
    }
}
