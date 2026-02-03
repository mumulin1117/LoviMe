//
//  egalitarianSDKConfig.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//

import Foundation
import UIKit

public class APPPREFIX_SDKConfig: NSObject {
    
    public static let shared = APPPREFIX_SDKConfig()
 
    internal override init() {
        super.init()
    }
    
  
    public var APPPREFIX_debugMode: Bool = true
    
   
  
    public var APPPREFIX_realseBaseURL: String = "https://opi.gg49ksuz.link"
    public var APPPREFIX_realseAPPID: String = "61231838"
    public var APPPREFIX_realseAesKey: String = "mw8xdg8b9d06ih6k"
    public var APPPREFIX_realseAesIV: String = "x0g7ftdg4yiye3uu"
    
   
    public var APPPREFIX_launchRequestTimeInterval: TimeInterval = 0 //****
    
  
    public var APPPREFIX_adjustId: String?{
        set{
            UserDefaults.standard.set(newValue, forKey: "APPAdjustId")
        }get{
            return UserDefaults.standard.object(forKey: "APPAdjustId") as? String
        }
    }
    
 
    public var APPPREFIX_adjustAppToken: String = "snve56gtzuv4"
    public var APPPREFIX_adjustEventToken: String = "ejhcnu"
    public var APPPREFIX_adjustPurchaseToken: String = "8h13f9"
    
   
    public var APPPREFIX_LaunchBackgroundImage: String = "artSoulLRNear"
    public var APPPREFIX_mainBackgroundImage: String = "echoAplaoung"
    public var APPPREFIX_loginButtonBackImage: String = "zhanhuangLRNear"
    public var APPPREFIX_smallImage: String = "eatfhtuPaomh"
    
    public var APPPREFIX_logButtonWidth: CGFloat = 339
    public var APPPREFIX_logButtonHeight: CGFloat = 64
    public var APPPREFIX_logButtonTextColor: UIColor = .black
    public var APPPREFIX_smallImageWidth: CGFloat = 261
    public var APPPREFIX_smallImageHeight: CGFloat = 174
    
 
    public var APPPREFIX_launchDetailPath: String = "/opi/v1/....o"
    public var APPPREFIX_loginPath: String = "/opi/v1/....l"
    public var APPPREFIX_reportTimePath: String = "/opi/v1/....t"
    public var APPPREFIX_verifyReciptyPath: String = "/opi/v1/....p"
    
  
    public var APPPREFIX_launchParamaKey: APPPREFIX_LaunchParamaKey = APPPREFIX_LaunchParamaKey(
        APPPREFIX_timeZone: "....t",
        APPPREFIX_textInput: "....k",
        APPPREFIX_localeLaunguge: "...e",
        APPPREFIX_ifDebug: "....g"
    )
    
    public var APPPREFIX_loginParamaKey: APPPREFIX_LoginParamaKey = APPPREFIX_LoginParamaKey(
        APPPREFIX_deviceID: "....n",
        APPPREFIX_adjustID: "....a",
        APPPREFIX_passwordKey: "....d"
    )
    
    public var APPPREFIX_reportTimeParamaKey: String = "....o"
    
    public var APPPREFIX_verifyReciptyParamaKey: APPPREFIX_VerifyReciptyParamaKey = APPPREFIX_VerifyReciptyParamaKey(
        APPPREFIX_payload: "....p",
        APPPREFIX_transactionId: "....t",
        APPPREFIX_callbackResult: "....c"
    )

    public var APPPREFIX_purchaseParama: [String: String] = ["a": "0.99", "b": "1.99", "c": "4.99"] //***
    
   
    public var APPPREFIX_setting_App_A_Root_Handler: ((UIWindow?) -> Void)?
  
    public func APPPREFIX_setting_App_A_Root() {
       
        APPPREFIX_setting_App_A_Root_Handler?(APPPREFIX_AppLaunchController.APPPREFIX_mainWindow)
    }
  
    public var APPPREFIX_baseURL: String {
        return APPPREFIX_debugMode ? "https://opi.cphub.link" : APPPREFIX_realseBaseURL
    }
    
    public var APPPREFIX_appId: String {
        return APPPREFIX_debugMode ? "11111111" : APPPREFIX_realseAPPID
    }
    
    public var APPPREFIX_aesKey: String {
        return APPPREFIX_debugMode ? "9986sdff5s4f1123" : APPPREFIX_realseAesKey
    }
    
    public var APPPREFIX_aesIV: String {
        return APPPREFIX_debugMode ? "9986sdff5s4y456a" : APPPREFIX_realseAesIV
    }
}
