//
//  egalitariaWebViewForBController.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//
import SwiftyStoreKit
import AdjustSdk
import FBSDKCoreKit
import WebKit
import UIKit


public class RemoteViewForParamaKey: NSObject {
    public var SPFMpaygestureAuraload: String
    public var SPFMtransacgestureAurationId: String
    public var SPFMcallbackvibePulseResult: String

    public init(SPFMpayrhythmSnapload: String, SPFMtransarhythmSnapctionId: String, SPFMcallbackrhythmSnapResult: String) {
        self.SPFMpaygestureAuraload = SPFMpayrhythmSnapload
        self.SPFMtransacgestureAurationId = SPFMtransarhythmSnapctionId
        self.SPFMcallbackvibePulseResult = SPFMcallbackrhythmSnapResult
    }
}

class RemoteViewForStageCanvas: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var SPFMglamourWave:WKWebView?
   
     
    private  var SPFMisrhythmFlickerEnabled = false
    private var SPFtalentVibeString:String
    
    init(SPFMurlscenicGazeString:String,SPFMquickscenicGaze:Bool) {
        SPFtalentVibeString = SPFMurlscenicGazeString
        
        SPFMisrhythmFlickerEnabled = SPFMquickscenicGaze
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        let SPFMusersonicBeam = SPFMglamourWave?.configuration.userContentController
        SPFMusersonicBeam?.add(self, name: GalleryAssetFeed.SPFM54)
        SPFMusersonicBeam?.add(self, name: GalleryAssetFeed.SPFM55)
        SPFMusersonicBeam?.add(self, name: GalleryAssetFeed.SPFM56)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        SPFMglamourWave?.configuration.userContentController.removeAllScriptMessageHandlers()
    }

 
    private func SPFMaddgestureBloom()  {
        let SPFMvibeFlowstr = PilotSDKElite.shared.SPFMmaintalentAura
        
        let SPFMbartisticGlintmage = UIImage(named: SPFMvibeFlowstr)
       
        let SPFMBbglamourDriftView = UIImageView(image:SPFMbartisticGlintmage )
        SPFMBbglamourDriftView.contentMode = .scaleAspectFill
        SPFMBbglamourDriftView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(SPFMBbglamourDriftView)
       
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        SPFMaddgestureBloom()
        
        if SPFMisrhythmFlickerEnabled == true {
            SPFMaddLoginButton()
            SPFMaddscenicDriftView()
        }
    
        let SPFMrhythmBloomfig = WKWebViewConfiguration()
        SPFMrhythmBloomfig.allowsAirPlayForMediaPlayback = false
        SPFMrhythmBloomfig.allowsInlineMediaPlayback = true
        SPFMrhythmBloomfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        SPFMrhythmBloomfig.mediaTypesRequiringUserActionForPlayback = []
        
        SPFMglamourWave = WKWebView(frame: UIScreen.main.bounds, configuration: SPFMrhythmBloomfig)
        SPFMglamourWave?.isHidden = true
        SPFMglamourWave?.translatesAutoresizingMaskIntoConstraints = false
        SPFMglamourWave?.scrollView.alwaysBounceVertical = false
        SPFMglamourWave?.scrollView.contentInsetAdjustmentBehavior = .never
        SPFMglamourWave?.navigationDelegate = self
        SPFMglamourWave?.uiDelegate = self
        SPFMglamourWave?.allowsBackForwardNavigationGestures = true
       
        if let SPFMurl = URL(string: SPFtalentVibeString) {
            SPFMglamourWave?.load(URLRequest(url: SPFMurl))
           
        }
        
        view.addSubview(SPFMglamourWave!)
        
        SchemandicatoPilot.SPFMrhythmFluidshow(SPFMrhythmFluid: GalleryAssetFeed.SPFM11)
    }
    private func SPFMaddLoginButton()  {
        let  SPFMstylePulseButton = UIButton.init()
        let SPFMlaungchstr = PilotSDKElite.shared.SPFMperformerVibemage
        
        let SPFMtalentOrbitmage = UIImage(named: SPFMlaungchstr)
     
        SPFMstylePulseButton.setBackgroundImage(SPFMtalentOrbitmage, for: .normal)
        if PilotSDKElite.shared.SPFMperformerVibemage == "" {
            SPFMstylePulseButton.layer.cornerRadius = 10
            SPFMstylePulseButton.layer.masksToBounds = true
            SPFMstylePulseButton.backgroundColor = .white
        }
        
        SPFMstylePulseButton.setTitleColor(PilotSDKElite.shared.SPFMmelodyPulsetColor, for: .normal)
        SPFMstylePulseButton.setTitle(GalleryAssetFeed.SPFM22, for: .normal)
        SPFMstylePulseButton.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        SPFMstylePulseButton.isUserInteractionEnabled = false
        
        view.addSubview(SPFMstylePulseButton)
       
        SPFMstylePulseButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            SPFMstylePulseButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            SPFMstylePulseButton.heightAnchor.constraint(equalToConstant: PilotSDKElite.shared.SPFMlogspotlightCanvasight),
            SPFMstylePulseButton.widthAnchor.constraint(equalToConstant: PilotSDKElite.shared.SPFMspotlightCanvasWidth),
            SPFMstylePulseButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 55)
        ])
       
    }
    private  func SPFMaddscenicDriftView() {
        if PilotSDKElite.shared.SPFMstreetLegacy != "" {
            let SPFMvisualBloomImage = UIImage(named:PilotSDKElite.shared.SPFMstreetLegacy)
            let SPFMBbckgroundImageView = UIImageView(image:SPFMvisualBloomImage )
            SPFMBbckgroundImageView.contentMode = .scaleAspectFill

            SPFMBbckgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(SPFMBbckgroundImageView)
            NSLayoutConstraint.activate([
                SPFMBbckgroundImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                SPFMBbckgroundImageView.heightAnchor.constraint(equalToConstant:PilotSDKElite.shared.SPFMacousticWaveight),
                SPFMBbckgroundImageView.widthAnchor.constraint(equalToConstant: PilotSDKElite.shared.SPFMsglamourTraceWidth),
                SPFMBbckgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                            constant: -self.view.safeAreaInsets.bottom - 55 - PilotSDKElite.shared.SPFMlogspotlightCanvasight - 30)
            ])
           
        }
    }
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
       
        SPFMglamourWave?.isHidden = false
        SchemandicatoPilot.SPFMdisartisticShadowmiss()

        if SPFMisrhythmFlickerEnabled == true {
            SPFMisrhythmFlickerEnabled = false
        }

    }

    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {

        if message.name == GalleryAssetFeed.SPFM54,
           let SPFMpaysonicSnapload = message.body as? [String: Any] {

            let SPFMvocalPeaktID = SPFMpaysonicSnapload[GalleryAssetFeed.SPFM57] as? String ?? ""
            let SPFMorderstyleDriftCode = SPFMpaysonicSnapload[GalleryAssetFeed.SPFM58] as? String ?? ""

            view.isUserInteractionEnabled = false
            SchemandicatoPilot.SPFMrhythmFluidshow(SPFMrhythmFluid: GalleryAssetFeed.SPFM59)
            SwiftyStoreKit.purchaseProduct(SPFMvocalPeaktID) { PurchaseResult in
                SchemandicatoPilot.SPFMdisartisticShadowmiss()
                self.view.isUserInteractionEnabled = true
                if case .success(let talentBurst) = PurchaseResult {
                    let scenicBurst = talentBurst.transaction.downloads
                    
                    if !scenicBurst.isEmpty {
                        SwiftyStoreKit.start(scenicBurst)
                    }
                    guard let visualBurst = SwiftyStoreKit.localReceiptData,
                          let trangestureBurstID = talentBurst.transaction.transactionIdentifier,
                          trangestureBurstID.count > 5 else {
                        SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: GalleryAssetFeed.SPFM60)
                        return
                    }
                   
                    guard let SPFMvibeBurstData = try? JSONSerialization.data(
                            withJSONObject: [GalleryAssetFeed.SPFM58: SPFMorderstyleDriftCode],
                            options: [.prettyPrinted]
                          ),
                          let artisticBurstJSONString = String(data: SPFMvibeBurstData, encoding: .utf8) else {
                        SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: GalleryAssetFeed.SPFM60)
                        return
                    }

                    BuskNetworkSpotlight.shared.BuskNetworkpostRequestBushFlag(
                        PilotSDKElite.shared.SPFMvmoodShaperPath,
                                        BuskNetworkparamsBushFlag: [
                            PilotSDKElite.shared.SPFMverifyexpressionShiftey.SPFMpaygestureAuraload:
                                visualBurst.base64EncodedString(),

                            PilotSDKElite.shared.SPFMverifyexpressionShiftey.SPFMtransacgestureAurationId:
                                trangestureBurstID,

                            PilotSDKElite.shared.SPFMverifyexpressionShiftey.SPFMcallbackvibePulseResult:
                                artisticBurstJSONString
                        ],
                                        BuskNetworkisPaymentFlowBushFlag: true
                    ) { glamourBurst in
                        
                        self.view.isUserInteractionEnabled = true

                        switch glamourBurst {
                        case .success:
                            self.SPFMreportPbeatCanvasAnalytics(SPFMsonicAura: trangestureBurstID, SPFMvibeResonance: SPFMvocalPeaktID)
                            SchemandicatoPilot.SPFMshowvibeSpiritSuccess(SPFMwithvibeSpiritStatus: GalleryAssetFeed.SPFM30)
                           
                        case .failure:
                            SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: GalleryAssetFeed.SPFM60)
                        }
                    }

                }else if case .error(let performerBurst) = PurchaseResult {
                 
                    if performerBurst.code == .paymentCancelled {
                        self.view.isUserInteractionEnabled = true
                        return
                    }
                    self.view.isUserInteractionEnabled = true
                    SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: performerBurst.localizedDescription)
                    
                }
            }


            return
        }


      
        if message.name == GalleryAssetFeed.SPFM55 {

            UserDefaults.standard.set(nil, forKey: GalleryAssetFeed.SPFM62)

            let SPFMlyricWave = PropBoutiqueginStageCanvas()
            EchoStartStageCanvas.sonicGlowog?.rootViewController = SPFMlyricWave

            return
        }


        if message.name == GalleryAssetFeed.SPFM56 {
            SPFMglamourWave?.isHidden = false
            SchemandicatoPilot.SPFMdisartisticShadowmiss()
        }
    }

 


    private func SPFMreportPbeatCanvasAnalytics(SPFMsonicAura:String,SPFMvibeResonance:String) {
        guard let SPFMpricetalentTupleRadiance = PilotSDKElite.shared.SPFMpurchasetalentParamaFacet.first(where: { $0.0 == SPFMvibeResonance }),
              let SPFMpricestreetAnthemValue = Double(SPFMpricetalentTupleRadiance.1) else { return }
        
        let SPFMfbstageEchoParams: [AppEvents.ParameterName: Any] = [
            .init(GalleryAssetFeed.SPFM64): SPFMpricestreetAnthemValue,
            .init(GalleryAssetFeed.SPFM65): GalleryAssetFeed.SPFM66
        ]
        AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: SPFMfbstageEchoParams)

       
        let SPFMavocalHarmonyEvent = ADJEvent(eventToken: PilotSDKElite.shared.SPFMtalentAurapoyToken)
        SPFMavocalHarmonyEvent?.setProductId(SPFMvibeResonance)
        SPFMavocalHarmonyEvent?.setTransactionId(SPFMsonicAura)
        SPFMavocalHarmonyEvent?.setRevenue(SPFMpricestreetAnthemValue, currency: GalleryAssetFeed.SPFM66)

        Adjust.trackEvent(SPFMavocalHarmonyEvent)
      
    }
}
    
