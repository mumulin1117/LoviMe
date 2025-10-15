//
//  PerformMomentController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/14.

import UIKit
import WebKit
import SwiftyStoreKit

class PerformMomentController:  UIViewController {
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView.init()
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.frame.size = CGSize.init(width: 70, height: 70)
        return artFusion
    }()
    private var creativePerception:WKWebView?
    
    private  var creativeBlend:String
    
    var artPerformerLite: AArtPerception
    
    var sceneJourney:Bool
    init(stageWave: AArtPerception, streetSoul: String = "",urbanJourneyer:Bool = false) {
        self.artPerformerLite = stageWave
      
        self.creativeBlend = stageWave.creativeMoment(urbanBeat: streetSoul)
        self.sceneJourney = urbanJourneyer
        super.init(nibName: nil, bundle: nil)
     }
    
    private let creativeBlendFlow = UIScreen.main.bounds
    
   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    private lazy var visualJourneyWave: WKWebViewConfiguration = {
        let streetSpiritFlow = WKWebViewConfiguration()
        
        streetSpiritFlow.allowsInlineMediaPlayback = true
        streetSpiritFlow.mediaTypesRequiringUserActionForPlayback = []
        
        let stageRhythmFlow = WKUserContentController()
     
        [
            "streetVibe", "urbanPerformer", "artBeat",
            "creativeMotion","publicTalent","streetRhythm","openStage","urbanEnergy"
            
        ].forEach { handler in
            stageRhythmFlow.add(self, name: handler)
        }
        streetSpiritFlow.userContentController = stageRhythmFlow
        
        return streetSpiritFlow
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        visualFlowWave()
       
        
      
        creativePerception?.backgroundColor = .clear
       
        creativeMotionFlow()
        
        creativePerception?.scrollView.contentInsetAdjustmentBehavior = .never
       
       
        guard let artSoulWave = creativePerception,
        let url = URL(string: creativeBlend ) else{
            return
        }
        self.view.addSubview(artSoulWave)
        artSoulWave.load(URLRequest(url: url))
        
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
        artFusion.startAnimating()
    }
    
    func creativeMotionFlow() {
        creativePerception?.isHidden = true
       
        creativePerception?.scrollView.bounces = false
        creativePerception?.uiDelegate = self
    }
    
    func visualFlowWave()  {
        creativePerception = WKWebView(
            frame: creativeBlendFlow,
            configuration: visualJourneyWave
        )
        creativePerception?.navigationDelegate = self
    }
   
    
    
    private func visualEcho(visualBlend:String)  {
        artFusion.startAnimating()
        SwiftyStoreKit.purchaseProduct(visualBlend, atomically: true) { psResult in
            
            self.artFusion.stopAnimating()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let performAura) = psResult {
                
                let speedrunner = performAura.transaction.downloads
                if !speedrunner.isEmpty {
                    SwiftyStoreKit.start(speedrunner)
                }
                
                if performAura.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(performAura.transaction)
                }
              
               
                self.creativePerception?.evaluateJavaScript("urbanPerformer()", completionHandler: nil)
            }else if case .error(let error) = psResult {
                self.view.isUserInteractionEnabled = true
                let alert = UIAlertController(title: "Pay failed!", message: error.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Know", style: .default))
                self.present(alert, animated: true)
            }
        }
    }
    
}


extension PerformMomentController:WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.creativePerception?.isHidden = false
            self.artFusion.stopAnimating()
        }))
        
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "streetVibe" {
            guard let creativeMood = message.body  as? String else {
                return
            }
           
            
           
            visualEcho(visualBlend:creativeMood)
        }
        
        
        
        if message.name == "artBeat" {
            if let artExpression =  message.body as? String{
                
                self.navigationController?.pushViewController(PerformMomentController.init(stageWave: .sceneMaker, streetSoul: artExpression), animated: true)
            }
            
        }
        if message.name == "openStage" {
            if sceneJourney == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "publicTalent" {
            if sceneJourney == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "streetRhythm" {
            lookPattern()
            
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = CampaignsContriller.init()
           
        }
        
        
        
        if message.name == "urbanEnergy" {
            
            guard let artExpression = message.body  as? String else {
                
                return
            }
            
            visualStage(urbanJourneyer:artExpression)
            
        }
        
        
        
    }
    
    private func visualStage(urbanJourneyer:String)  {
        guard let performHarmony = URL(string: "telprompt://\(urbanJourneyer)"),
              UIApplication.shared.canOpenURL(performHarmony) else {
           
            return
        }
        
        UIApplication.shared.open(performHarmony, options: [:], completionHandler: nil)
    }
    
    
    func lookPattern()  {
        VisualEcho.streetTone = nil
        VisualEcho.sceneEnergy = nil
      
    }
}


extension UIImageView{
    func urbanTone(streetEcho userStatus: String?) {
          
        
          guard let creativeStagecraft = userStatus,
                let artMood = URL(string: creativeStagecraft) else {
             
              return
          }
         
          DispatchQueue.global(qos: .userInitiated).async {
              do {
                  let visualSoul = try Data(contentsOf: artMood)
                  if let stageFusion = UIImage(data: visualSoul) {
                    
                      
                      DispatchQueue.main.async {
                          self.image = stageFusion
                      }
                  }
              } catch {
                  
              }
          }
          
      }
      
}



enum AArtPerception: String {
    case performMood = "pages/CreateRoom/index?"
    case cityChorus = "pages/JoinLiveRoom/index?channel=&"
    case artFusion = "pages/LiveRoomRest/index?liveId="
    case creativeMotion = "pages/LiveRoomVideo/index?liveId="
    case publicTalent = "pages/privateChat/index?userId="
    case expressPulse = "pages/MineCenter/index?"
    case realPerformance = "pages/AttentionMy/index?"
    case visualFlow = "pages/Concerned/index?"
    case spotlightAura = "pages/MyPost/index?"
    case cityEcho = "pages/PostDetails/index?dynamicId="
    case urbanPerformer = "pages/homepage/index?userId="
    case sceneWave = "pages/LiveHistory/index?"
    case streetRhythm = "pages/report/index?"
    case urbanEnergy = "pages/MyGoods/index?"
    case streetScene = "pages/MyAddress/index?"
    case liveGroove = "pages/MyOrder/index?"
    case openStage = "pages/CreatePost/index?"
    case stageFlow = "pages/Setting/index?"
    case artBeat = "pages/EditData/index?"
    case streetVibe = "pages/Agreement/index?type=1&"
    case publicRhythm = "pages/Agreement/index?type=2&"
    case creativeAura = "pages/ActiveDetails/index?activityId="
    case streetEnergy = "pages/CreateActive/index?"
    case urbanFrame = "pages/myActivities/index?"
    case sceneMaker = ""
   
    func creativeMoment(urbanBeat: String) -> String {
        if self == .sceneMaker {
            return urbanBeat
        }
        var stageBreeze = urbanBeat
        if !stageBreeze.isEmpty {
            stageBreeze += "&"
        }
        
        
        var streetSpirit = "https://g8s3a1d5f7g2h4.shop/#"
        
        streetSpirit += self.rawValue + stageBreeze
        streetSpirit += "token=\(VisualEcho.sceneEnergy ?? "")"
        streetSpirit += "&appID=\(VisualEcho.publicRhythm)"
        
        return streetSpirit
    }
}


struct VisualEcho {
    
   
    static var sceneEnergy: String? {
        get { UserDefaults.standard.string(forKey: "creativeMood") }
        set { UserDefaults.standard.set(newValue, forKey: "creativeMood") }
    }

    static var streetTone: Int? {
        get { UserDefaults.standard.object(forKey: "lookSense") as? Int }
        set { UserDefaults.standard.set(newValue, forKey: "lookSense") }
    }

    static var publicRhythm = "61231838"

    static func sceneMaker(
                performLens: String,
                creativeMoment: [String: Any],
                creativeLight: ((Any?) -> Void)?,
                urbanBeat: ((Error) -> Void)?
    ) {
        let cityCanvas = "https://g8s3a1d5f7g2h4.shop/backthree" +         performLens
        guard let artJourneyer = URL(string: cityCanvas) else {
                    urbanBeat?(NSError(domain: "CochlearError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid Pathway: \(cityCanvas)"]))
            return
        }
        
        var artFusionist = urbanJourney(
                    performJourney: artJourneyer,
                    stageFusion:         creativeMoment
        )
        var artSoul = ["Content-Type": "application/json"]
        artSoul["key"] = "61231838"
        artSoul["token"] = sceneEnergy
        
        artSoul.forEach { artFusionist.setValue($1, forHTTPHeaderField: $0) }
        
        let artRhythmh = URLSessionConfiguration.default
        
        artRhythmh.timeoutIntervalForResource = 60
        artRhythmh.timeoutIntervalForRequest = 30
  
        
        URLSession(configuration: artRhythmh).dataTask(with: artFusionist) { creativeGlow, formSense, lightMood in
            DispatchQueue.main.async {
                if let stagePulse = lightMood {
                            urbanBeat?(stagePulse)
                    return
                }
                
               
                
                guard let urbanScene = creativeGlow else {
                            urbanBeat?(NSError(domain: "SynapticError", code: -3, userInfo: [NSLocalizedDescriptionKey: "Empty dendritic response"]))
                    return
                }

                do {
                    let creativeVibe = try JSONSerialization.jsonObject(
                        with: urbanScene,
                        options: [.mutableContainers, .allowFragments]
                    )
                            creativeLight?(creativeVibe)
                } catch let hippocampalError {
                            urbanBeat?(NSError(
                        domain: "ParsingError",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Failed hippocampal processing: \(hippocampalError.localizedDescription)",
                            "rawActivation": String(data: urbanScene, encoding: .utf8) ?? "Non-textual neural pattern",
                            "limbicTrace": hippocampalError
                        ]
                    ))
                }
            }
        }.resume()
    }

    

    private static func urbanJourney(
                performJourney: URL,
                stageFusion: [String: Any]
    ) -> URLRequest {
        var streetBlend = URLRequest(
            url:         performJourney,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 30
        )
        
        streetBlend.httpMethod = "POST"
       
        streetBlend.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        
        streetBlend.setValue("application/json", forHTTPHeaderField: "Content-Type")
        streetBlend.setValue("application/json", forHTTPHeaderField: "Accept")
        streetBlend.httpBody = try? JSONSerialization.data(withJSONObject:         stageFusion, options: [])
        return streetBlend
    }
}
