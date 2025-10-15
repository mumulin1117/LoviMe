//
//  CampaignsContriller.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class CampaignsContriller: UIViewController {
    private var creativeStage:Bool = false
    
    
    @IBOutlet weak var cityRhythm: UITextField!
    
    
    @IBOutlet weak var urbanJourney: UITextField!
    
    @IBOutlet weak var cityGroove: UILabel!
    
    
    @IBOutlet weak var visualMoment: UILabel!
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView.init()
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.frame.size = CGSize.init(width: 70, height: 70)
        return artFusion
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        artMood()
        cityRhythm.borderStyle = .roundedRect
        urbanJourney.borderStyle = .roundedRect
        cityRhythm.attributedPlaceholder = NSAttributedString(string: "Enter email", attributes: [NSAttributedString.Key.foregroundColor :UIColor.white,
                                                                                                  NSAttributedString.Key.font :UIFont.systemFont(ofSize: 16, weight: .semibold)                                  ])
        
        
        
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
       
    }

    
    @IBAction func artPerformerLite(_ sender: UIButton) {
        if creativeStage == false {
            urbanExpressionist("Please read and agreen our term of service at first.")
            return
        }
        guard let liveJourney = cityRhythm.text, !liveJourney.isEmpty,
                      
                let creativeStagecraft = urbanJourney.text, !creativeStagecraft.isEmpty else {
                    urbanExpressionist("Please enter both email and password.")
                    return
                }
       

               
                performLogin(email: liveJourney, password: creativeStagecraft)
    }
    
    private func urbanExpressionist(_ message: String) {
            let alert = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    
    @IBAction func visualEnergy(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        creativeStage = sender.isSelected
        
    }
    
    private func artMood()  {
        cityGroove.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cocoache(taop:))))
        urbanJourney.attributedPlaceholder = NSAttributedString(string: "Enter password", attributes: [NSAttributedString.Key.foregroundColor :UIColor.white,
                                                                                                  NSAttributedString.Key.font :UIFont.systemFont(ofSize: 16, weight: .semibold)                                  ])
        visualMoment.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cocoache(taop:))))
    }
    
    
    @objc func cocoache(taop:UITapGestureRecognizer)  {
        if let view = taop.view {
            let taop = view.tag
            if taop == 20 {
                let gebui = AArtPerception.streetVibe
                self.present(PerformMomentController.init(stageWave: gebui,urbanJourneyer:true), animated: true)
            }
            
            if taop == 50 {
                let gebui = AArtPerception.publicRhythm
                self.present(PerformMomentController.init(stageWave: gebui,urbanJourneyer:true), animated: true)
            }
            
        }
    }
    
    private func performLogin(email: String, password: String) {
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: "/jltgwjmkignvdz/fyuggrlekml", creativeMoment: ["artChorus":VisualEcho.publicRhythm,
                            "liveSpirit":email,
                             "creativeMood":password]) { nkill in
            self.artFusion.stopAnimating()
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave["data"] as? [String: Any]
            else {
                self.urbanExpressionist("Account or password error")
                
                return
            }
       
            VisualEcho.sceneEnergy = craftAura["sceneAura"] as? String
            VisualEcho.streetTone = craftAura["artMood"] as? Int
            
            let gnb = UINavigationController.init(rootViewController: ABuseController.init())
            gnb.navigationBar.isHidden = true
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = gnb
            
        } urbanBeat: { shreed in
            self.artFusion.stopAnimating()
            self.urbanExpressionist(shreed.localizedDescription)
        }
        
           
       
    }
    
}
