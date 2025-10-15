//
//  AppDelegate.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//
import SwiftyStoreKit
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        SwiftyStoreKit.completeTransactions(atomically: true) { bodyTone in
            
            for trendCurve in bodyTone {
                switch trendCurve.transaction.transactionState {
                case .purchased, .restored:
                   
                    let passion = trendCurve.transaction.downloads
                 
                    
                    if !passion.isEmpty  {
                   
                        SwiftyStoreKit.start(passion)
                    } else if trendCurve.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(trendCurve.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                    break
                }
            }
            
        }
        
        if VisualEcho.sceneEnergy == nil {
            self.window?.rootViewController = CampaignsContriller()
        }else{
            let gnb = UINavigationController.init(rootViewController: ABuseController.init())
            gnb.navigationBar.isHidden = true
            self.window?.rootViewController = gnb
        }
        
       
        self.window?.makeKeyAndVisible()
        return true
    }

    

}

