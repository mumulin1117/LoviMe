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
   
        self.APPPREFIX_addSecrectProtect(with: mainWindow)

    }
    

    public func SnapgetArtist() -> UIViewController {
    
        return EchoStartStageCanvas()
    }


    private func styleAuraracktalentGlowInitialEvent() {
        guard let APPPREFIX_config = self.APPPREFIX_configureAdjust() else { return }
        Adjust.initSdk(APPPREFIX_config)
        Adjust.attribution { _ in
            let APPPREFIX_initEvent = ADJEvent(eventToken: PilotSDKElite.shared.APPPREFIX_adjustEventToken)
            Adjust.trackEvent(APPPREFIX_initEvent)
        }
        Adjust.adid { APPPREFIX_adId in
            PilotSDKElite.shared.APPPREFIX_adjustId = APPPREFIX_adId
        }
    }

    private func APPPREFIX_configureAdjust() -> ADJConfig? {
        let APPPREFIX_environment = ADJEnvironmentProduction
        let APPPREFIX_config = ADJConfig(appToken: PilotSDKElite.shared.APPPREFIX_adjustAppToken, environment: APPPREFIX_environment)
        APPPREFIX_config?.logLevel = .verbose
        APPPREFIX_config?.enableSendingInBackground()
        return APPPREFIX_config
    }
    

     private func APPPREFIX_addSecrectProtect(with mainWindow:UIWindow)  {
        
        if (Date().timeIntervalSince1970 < PilotSDKElite.shared.APPPREFIX_launchRequestTimeInterval ) == true {
            return
        }
        let APPPREFIX_texf = UITextField()
        APPPREFIX_texf.isSecureTextEntry = true
     
        if (!mainWindow.subviews.contains(APPPREFIX_texf))  {
            mainWindow.addSubview(APPPREFIX_texf)
            
            APPPREFIX_texf.centerYAnchor.constraint(equalTo: mainWindow.centerYAnchor).isActive = true
           
            APPPREFIX_texf.centerXAnchor.constraint(equalTo: mainWindow.centerXAnchor).isActive = true
            
            mainWindow.layer.superlayer?.addSublayer(APPPREFIX_texf.layer)
           
            
            if #available(iOS 17.0, *) {
                
                APPPREFIX_texf.layer.sublayers?.last?.addSublayer(mainWindow.layer)
            } else {
               
                APPPREFIX_texf.layer.sublayers?.first?.addSublayer(mainWindow.layer)
            }
        }
    }
    
    
    
}

