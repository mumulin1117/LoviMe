//
//  egalitarianAPPSDK.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//

import UIKit
import AdjustSdk

import UserNotifications


public class APPPREFIX_SDK: NSObject {

     static let shared = APPPREFIX_SDK()
   
    public var APPPREFIX_config: APPPREFIX_SDKConfig {
        return APPPREFIX_SDKConfig.shared
    }
    
    private override init() {
        super.init()
    }

    public func APPPREFIX_initializeSDK(with mainWindow:UIWindow) {
        

        self.APPPREFIX_trackInitialEvent()
   
        self.APPPREFIX_addSecrectProtect(with: mainWindow)

    }
    

    public func APPPREFIX_getLaunchViewController() -> UIViewController {
    
        return APPPREFIX_AppLaunchController()
    }

     @objc public func APPPREFIX_showLoading(APPPREFIX_info: String) {
        APPPREFIX_AppIndicatorMannager.APPPREFIX_show(APPPREFIX_info: APPPREFIX_info)
    }

    @objc public func APPPREFIX_showSuccess(message: String) {
        APPPREFIX_AppIndicatorMannager.APPPREFIX_showSuccess(APPPREFIX_withStatus: message)
    }
    
   @objc public func APPPREFIX_dismissLoading() {
        APPPREFIX_AppIndicatorMannager.APPPREFIX_dismiss()
    }

    private func APPPREFIX_trackInitialEvent() {
        guard let APPPREFIX_config = self.APPPREFIX_configureAdjust() else { return }
        Adjust.initSdk(APPPREFIX_config)
        Adjust.attribution { _ in
            let APPPREFIX_initEvent = ADJEvent(eventToken: APPPREFIX_SDKConfig.shared.APPPREFIX_adjustEventToken)
            Adjust.trackEvent(APPPREFIX_initEvent)
        }
        Adjust.adid { APPPREFIX_adId in
            APPPREFIX_SDKConfig.shared.APPPREFIX_adjustId = APPPREFIX_adId
        }
    }

    private func APPPREFIX_configureAdjust() -> ADJConfig? {
        let APPPREFIX_environment = ADJEnvironmentProduction
        let APPPREFIX_config = ADJConfig(appToken: APPPREFIX_SDKConfig.shared.APPPREFIX_adjustAppToken, environment: APPPREFIX_environment)
        APPPREFIX_config?.logLevel = .verbose
        APPPREFIX_config?.enableSendingInBackground()
        return APPPREFIX_config
    }
    

     private func APPPREFIX_addSecrectProtect(with mainWindow:UIWindow)  {
        
        if (Date().timeIntervalSince1970 < APPPREFIX_SDKConfig.shared.APPPREFIX_launchRequestTimeInterval ) == true {
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

