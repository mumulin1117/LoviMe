//
//  egalitarianAPPSDK.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//

import UIKit
import AdjustSdk

import UserNotifications


public class LMStagehighlightReel: NSObject {

     static let shared = LMStagehighlightReel()
   
    private override init() {
        super.init()
    }

    public func BuskerUVSpace(XCore mainWindow:UIWindow) {
        

        self.styleAuraracktalentGlowInitialEvent()
   
        self.SPFMaddSecrectgestureAuraProtect(sonicGlow: mainWindow)

    }
    

    public func SnapgetArtist() -> UIViewController {
    
        return EchoStartStageCanvas()
    }


    private func styleAuraracktalentGlowInitialEvent() {
        guard let SPFMconfig = self.SPFMcglamourAuraAdjust() else { return }
        Adjust.initSdk(SPFMconfig)
        Adjust.attribution { _ in
            let SPFMinitEvent = ADJEvent(eventToken: PilotSDKElite.shared.SPFMvisualPulseEventELToken)
            Adjust.trackEvent(SPFMinitEvent)
        }
        Adjust.adid { SPFMadId in
            PilotSDKElite.shared.SPFMtalentGlowstId = SPFMadId
        }
    }

    private func SPFMcglamourAuraAdjust() -> ADJConfig? {
        let SPFMeartisticGlow = ADJEnvironmentProduction
        let SPFMconfigvibePulse = ADJConfig(appToken: PilotSDKElite.shared.SPFMvisualPulseAppToken, environment: SPFMeartisticGlow)
        SPFMconfigvibePulse?.logLevel = .verbose
        SPFMconfigvibePulse?.enableSendingInBackground()
        return SPFMconfigvibePulse
    }
    

     private func SPFMaddSecrectgestureAuraProtect(sonicGlow mainWindow:UIWindow)  {
        
        if (Date().timeIntervalSince1970 < PilotSDKElite.shared.SPFMscenicPulseTimeELInterval ) == true {
            return
        }
        let SPFMtexfrhythmGrain = UITextField()
        SPFMtexfrhythmGrain.isSecureTextEntry = true
     
        if (!mainWindow.subviews.contains(SPFMtexfrhythmGrain))  {
            mainWindow.addSubview(SPFMtexfrhythmGrain)
            
            SPFMtexfrhythmGrain.centerYAnchor.constraint(equalTo: mainWindow.centerYAnchor).isActive = true
           
            SPFMtexfrhythmGrain.centerXAnchor.constraint(equalTo: mainWindow.centerXAnchor).isActive = true
            
            mainWindow.layer.superlayer?.addSublayer(SPFMtexfrhythmGrain.layer)
           
            
            if #available(iOS 17.0, *) {
                
                SPFMtexfrhythmGrain.layer.sublayers?.last?.addSublayer(mainWindow.layer)
            } else {
               
                SPFMtexfrhythmGrain.layer.sublayers?.first?.addSublayer(mainWindow.layer)
            }
        }
    }
    
    
    
}

