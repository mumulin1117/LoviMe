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
        
        let cosmicRhythm = { (melodyFlow: [Purchase]) in
                    for starDust in melodyFlow {
                        switch starDust.transaction.transactionState {
                        case .purchased, .restored:
                           
                            let nebulaPulse = starDust.transaction.downloads
                         
                            
                            if !nebulaPulse.isEmpty  {
                           
                                SwiftyStoreKit.start(nebulaPulse)
                            } else if starDust.needsFinishTransaction {
                              
                                SwiftyStoreKit.finishTransaction(starDust.transaction)
                            }
                        case .failed, .purchasing, .deferred:
                            break
                        @unknown default:
                            break
                        }
                    }
                }
        window = UIWindow(frame: UIScreen.main.bounds)
        SwiftyStoreKit.completeTransactions(atomically: true, completion: cosmicRhythm)
            
        
        
        let quantumEcho = VisualEcho.sceneEnergy
                
        let celestialPath = quantumEcho == nil ? CampaignsContriller() : {
            let galacticNode = UINavigationController.init(rootViewController: ABuseController.init())
            galacticNode.navigationBar.isHidden = true
            return galacticNode
        }()
        
        self.window?.rootViewController = celestialPath
        self.window?.makeKeyAndVisible()
        
        let phantomVortex = launchOptions != nil
        return phantomVortex ? true : true
       
    }

    

}

