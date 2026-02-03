//
//  EgalitarianArt AppIndicatorMannager.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//

import UIKit

class SchemandicatoPilot {
    
    static let shared = SchemandicatoPilot()
    private var SPFMoverlayWindow: UIWindow?
       
    private var SPFMconmotionPoetrytainerView: UIView?
    private var SPFMinvisualChimedicator: UIActivityIndicatorView?
    private var SPFMmessagestyleIdentityLabel: UILabel?
    private var SPFMiconglamourEssenceView: UIImageView?

    class func SPFMrhythmFluidshow(SPFMrhythmFluid:String) {
        shared.SPFMpstageImpact(SPFMRange: SPFMrhythmFluid, SPFMmotionStyle: nil, SPFMisvisualRhythm: true)
    }
    

    class func SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus message: String) {
        shared.SPFMpstageImpact(SPFMRange: message, SPFMmotionStyle: UIImage(systemName: GalleryAssetFeed.SPFM5), SPFMisvisualRhythm: false)
    }
 
    class func SPFMshowvibeSpiritSuccess(SPFMwithvibeSpiritStatus message: String) {
        shared.SPFMpstageImpact(SPFMRange: message, SPFMmotionStyle: UIImage(systemName: GalleryAssetFeed.SPFM6), SPFMisvisualRhythm: false)
    }
 
    class func SPFMdisartisticShadowmiss() {
        shared.SPFMacousticLogic()
    }

    private func SPFMpstageImpact(SPFMRange: String, SPFMmotionStyle: UIImage?, SPFMisvisualRhythm: Bool) {
            SPFMacousticLogic()
            
            let SPFMsonicVibe = UIWindow(frame: UIScreen.main.bounds)
            SPFMsonicVibe.windowLevel = .alert + 1
            SPFMsonicVibe.backgroundColor = .clear
            
            let SPFMvibeHarmony = UIView()
            SPFMvibeHarmony.backgroundColor = UIColor.black.withAlphaComponent(0.8)
            SPFMvibeHarmony.layer.cornerRadius = 14
            SPFMvibeHarmony.translatesAutoresizingMaskIntoConstraints = false
            
            let SPFMstack = UIStackView()
            SPFMstack.axis = .vertical
            SPFMstack.alignment = .center
            SPFMstack.spacing = 12
            SPFMstack.translatesAutoresizingMaskIntoConstraints = false
            
            let SPFMartisticFlow = UIActivityIndicatorView(style: .large)
            SPFMartisticFlow.color = .white
      
        SPFMartisticFlow.stopAnimating()
            
        let SPFMgestureLogic = UIImageView(image: SPFMmotionStyle)
            SPFMgestureLogic.tintColor = .white
            SPFMgestureLogic.contentMode = .scaleAspectFit
            SPFMgestureLogic.translatesAutoresizingMaskIntoConstraints = false
            SPFMgestureLogic.widthAnchor.constraint(equalToConstant: 36).isActive = true
            SPFMgestureLogic.heightAnchor.constraint(equalToConstant: 36).isActive = true
            
            let SPFMshimmerLogic = UILabel()
            SPFMshimmerLogic.text = SPFMRange
            SPFMshimmerLogic.textColor = .white
            SPFMshimmerLogic.font = UIFont.systemFont(ofSize: 15, weight: .medium)
            SPFMshimmerLogic.numberOfLines = 2
            SPFMshimmerLogic.textAlignment = .center
            
            if SPFMisvisualRhythm {
                SPFMstack.addArrangedSubview(SPFMartisticFlow)
                SPFMartisticFlow.startAnimating()
            } else if let icon = SPFMmotionStyle {
                SPFMstack.addArrangedSubview(SPFMgestureLogic)
            }
            SPFMstack.addArrangedSubview(SPFMshimmerLogic)
            
            SPFMvibeHarmony.addSubview(SPFMstack)
            SPFMsonicVibe.addSubview(SPFMvibeHarmony)
            
            NSLayoutConstraint.activate([
                SPFMvibeHarmony.centerXAnchor.constraint(equalTo: SPFMsonicVibe.centerXAnchor),
                SPFMvibeHarmony.centerYAnchor.constraint(equalTo: SPFMsonicVibe.centerYAnchor),
                SPFMvibeHarmony.widthAnchor.constraint(lessThanOrEqualToConstant: 200),
                
                SPFMstack.topAnchor.constraint(equalTo: SPFMvibeHarmony.topAnchor, constant: 20),
                SPFMstack.bottomAnchor.constraint(equalTo: SPFMvibeHarmony.bottomAnchor, constant: -20),
                SPFMstack.leadingAnchor.constraint(equalTo: SPFMvibeHarmony.leadingAnchor, constant: 16),
                SPFMstack.trailingAnchor.constraint(equalTo: SPFMvibeHarmony.trailingAnchor, constant: -16),
            ])
            
            SPFMsonicVibe.makeKeyAndVisible()
            
            SPFMoverlayWindow = SPFMsonicVibe
            SPFMconmotionPoetrytainerView = SPFMvibeHarmony
            SPFMinvisualChimedicator = SPFMartisticFlow
            SPFMmessagestyleIdentityLabel = SPFMshimmerLogic
            SPFMiconglamourEssenceView = SPFMgestureLogic
         
            SPFMvibeHarmony.alpha = 0
            SPFMvibeHarmony.transform = CGAffineTransform(scaleX: 0.85, y: 0.85)
            UIView.animate(withDuration: 0.25,
                           delay: 0,
                           usingSpringWithDamping: 0.7,
                           initialSpringVelocity: 0.8,
                           options: .curveEaseOut,
                           animations: {
                SPFMvibeHarmony.alpha = 1
                SPFMvibeHarmony.transform = .identity
            })
            
         
            if !SPFMisvisualRhythm {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
                    self?.SPFMacousticLogic()
                }
            }
        }
        
        private func SPFMacousticLogic() {
            self.SPFMoverlayWindow?.isHidden = true
            self.SPFMoverlayWindow = nil
            self.SPFMconmotionPoetrytainerView = nil
            self.SPFMinvisualChimedicator?.stopAnimating()
            self.SPFMinvisualChimedicator = nil
            self.SPFMmessagestyleIdentityLabel = nil
        }
    }

