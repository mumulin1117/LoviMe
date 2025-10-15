//
//  SpotlightReelController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class SpotlightReelController: UIViewController {

    


    @IBAction func creativeEnergy(_ sender: UIButton) {
        urbanExpressionFlow(stageWave: AArtPerception.openStage)
    }
    
    
    @IBAction func performEnergy(_ sender: UIButton) {
        urbanExpressionFlow(stageWave: AArtPerception.streetEnergy)
    }
    
    
    @IBAction func creativeAuraFlow(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
