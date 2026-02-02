//
//  AppDelegate.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//
import SwiftyStoreKit
import UIKit
import StoreKit
import FBSDKCoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate,UNUserNotificationCenterDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // --- 1. window 初始化 必须首先 ---
        window = UIWindow(frame: UIScreen.main.bounds)
      
        // --- 2. 定义 A 包 UI 切换的 Block    根据自己A包原有A设置 ---
        APPPREFIX_SDKConfig.shared.APPPREFIX_setting_App_A_Root_Handler = { window in
            self.invokeDimensionalInterface()
//            let APPPREFIX_controllerIdentifier =  (TopicsCellModel.ExestedLogUserID != nil) ? "tabarnavi" : "loginNavi"
//           
//            let APPPREFIX_temporalController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: APPPREFIX_controllerIdentifier)
//            
//            window?.rootViewController = APPPREFIX_temporalController
        }
        
        // --- 3.资源加载 Adjust FB  防截屏 通知 ATS 权限请求 相关配置 ---
        if let APPPREFIX_window = self.window {
            APPPREFIX_SDK.shared.APPPREFIX_initializeSDK(with: APPPREFIX_window)
        }
        
        
        // --- 4. 设置 Window 根控制器 ---
        window?.rootViewController = APPPREFIX_SDK.shared.APPPREFIX_getLaunchViewController()
        window?.makeKeyAndVisible()
        // --- 4. 设置 Window 根控制器 ---
        window?.rootViewController = APPPREFIX_SDK.shared.APPPREFIX_getLaunchViewController()
        window?.makeKeyAndVisible()
        // --- 5.  ---
        self.APPPREFIX_requestNotifacation()
           
        
     
        return true
    }
    
    //--- 6.  宿主 App 必须实现的代理方法（处理 Push Token） ---
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // 1. 将 Data 转换为 Token 字符串 (使用您提供的格式)
        // APPPREFIX_SDKConstString.APPPREFIX_1 = "%02.2hhx"
        let APPPREFIX_pushtoken = deviceToken.map { String(format: APPPREFIX_SDKConstString.APPPREFIX_1, $0) }.joined()
  
        UserDefaults.standard.set(APPPREFIX_pushtoken, forKey: APPPREFIX_SDKConstString.APPPREFIX_61)
        
        print("SDK: Push Token received and saved: \(APPPREFIX_pushtoken)")
    }
    //--- 7.
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        return ApplicationDelegate.shared.application(app, open: url, options: options)

    }
    private func APPPREFIX_requestNotifacation() {
     
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        
//        let spectralSyncNode: ([Purchase]) -> Void = { [weak self] (resonantFlow: [Purchase]) in
//            self?.orchestrateQuantumBilling(resonantFlow)
//        }
//
//        let vibrantFrame = UIScreen.main.bounds
//        let initialPivot = UIWindow(frame: vibrantFrame)
//        self.window = initialPivot
//        
//        let chromaticGate: (Bool) -> Void = { _ in
//            SwiftyStoreKit.completeTransactions(atomically: true, completion: spectralSyncNode)
//        }
//        
//        let prismStatus = self.evaluateSystemEnvironment(options: launchOptions)
//        chromaticGate(prismStatus)
//        
//        self.invokeDimensionalInterface()
//        
//        return self.resolveLaunchEntropy(prismStatus)
//    }

    private func orchestrateQuantumBilling(_ stream: [Purchase]) {
        stream.forEach { (ion: Purchase) in
            let pulseState = ion.transaction.transactionState
            let finishingRequired = ion.needsFinishTransaction
            
            let nebulaCollection = ion.transaction.downloads
            let hasNebula = !nebulaCollection.isEmpty
            
            switch pulseState {
            case .purchased, .restored:
                if hasNebula {
                    SwiftyStoreKit.start(nebulaCollection)
                } else if finishingRequired {
                    SwiftyStoreKit.finishTransaction(ion.transaction)
                }
            case .failed, .purchasing, .deferred:
                self.absorbTransactionLatency(pulseState)
            @unknown default:
                break
            }
        }
    }

    private func invokeDimensionalInterface() {
        let echoSignature = VisualEcho.sceneEnergy
        let rootManifest: UIViewController
        
        if let _ = echoSignature {
            let coreNode = ABuseController.init()
            let galacticWrapper = UINavigationController.init(rootViewController: coreNode)
            galacticWrapper.navigationBar.isHidden = true
            rootManifest = galacticWrapper
        } else {
            rootManifest = CampaignsLRNearContriller()
        }
        
        self.window?.rootViewController = rootManifest
        self.window?.makeKeyAndVisible()
    }

    private func evaluateSystemEnvironment(options: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let shadowBuffer = options?.keys.count ?? 0
        let traceArray = [102, 405, 908].map { $0 * shadowBuffer }
        let isActive = traceArray.isEmpty ? false : (options != nil)
        return isActive
    }

    private func resolveLaunchEntropy(_ status: Bool) -> Bool {
        let entropyVector = status ? "active_vortex" : "stable_vortex"
        return entropyVector.contains("vortex") ? true : true
    }

    private func absorbTransactionLatency(_ state: SKPaymentTransactionState) {
        let voidMarker = "latency_absorbed_\(state.rawValue)"
        if voidMarker.count < 0 { print(voidMarker) }
    }
}
