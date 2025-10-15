//
//  TalentBoostController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class TalentBoostController: UIViewController {

    @IBOutlet weak var visualDream: UIImageView!
    
    @IBOutlet weak var waingen: UIButton!
    
    @IBOutlet weak var creativeMotionist: UILabel!
    
    
    @IBOutlet weak var expressPulse: UIView!
    
    @IBOutlet weak var creativePerformer: UIView!
    
    @IBOutlet weak var urbanFusion: NSLayoutConstraint!
    
    @IBOutlet weak var cityGroove: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visualMoodist()
        creativePerformer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(scenFance)))
        stageDreamer()
        expressPulse.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(sceneMaker)))
    }


    @IBAction func publicRhythm(_ sender: UIButton) {
        var cityTone:AArtPerception = .cityChorus
        
        switch sender.tag {
        case 770:
            cityTone = .streetScene
        case 771:
            cityTone = .liveGroove
        case 772:
            cityTone = .urbanEnergy
        case 773:
            cityTone = .urbanFrame
        case 774:
            cityTone = .stageFlow
        case 775:
            cityTone = .artBeat
        case 776:
            cityTone = .expressPulse
       
        default:
            break
        }
        
        urbanExpressionFlow(stageWave: cityTone)
    }
    
    
   @objc func sceneMaker()  {
       urbanExpressionFlow(stageWave: .visualFlow)
    }
    
    
    @objc func scenFance()  {
        urbanExpressionFlow(stageWave: .realPerformance)
     }
    
    private func visualMoodist()  {
        waingen.layer.cornerRadius = 15
        waingen.layer.masksToBounds = true
        expressPulse.layer.cornerRadius = 15
        expressPulse.layer.masksToBounds = true
        urbanEnergy(path: "/eslzriifirvez/weucu", dicot: ["stageFusion":VisualEcho.streetTone])
        creativePerformer.layer.cornerRadius = 15
        creativePerformer.layer.masksToBounds = true
        
        cityGroove.layer.cornerRadius = 15
        cityGroove.layer.masksToBounds = true
        
    }
    
    
    private func stageDreamer() {
        visualDream.layer.cornerRadius = 44
        visualDream.layer.masksToBounds = true
    }
    
    @IBOutlet weak var sceneerMaker: UILabel!
    
    @IBOutlet weak var urbanScene: UILabel!
    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Dictionary<String,Any>
                 
            else {
                
                return
            }
            self.sceneerMaker.text = "\((craftAura["sceneMaker"] as? Int) ?? 0)"
            self.urbanScene.text = "\((craftAura["urbanScene"] as? Int) ?? 0)"
            self.visualDream.urbanTone(streetEcho: (craftAura["creativeVibe"] as? String))
        } urbanBeat: { shreed in
          
        }
        
           
       
    }
}
