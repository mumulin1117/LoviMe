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


public class APPPREFIX_VerifyReciptyParamaKey: NSObject {
    public var APPPREFIX_payload: String
    public var APPPREFIX_transactionId: String
    public var APPPREFIX_callbackResult: String

    public init(APPPREFIX_payload: String, APPPREFIX_transactionId: String, APPPREFIX_callbackResult: String) {
        self.APPPREFIX_payload = APPPREFIX_payload
        self.APPPREFIX_transactionId = APPPREFIX_transactionId
        self.APPPREFIX_callbackResult = APPPREFIX_callbackResult
    }
}

class APPPREFIX_WebViewForBController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var APPPREFIX_webViewContainer:WKWebView?
   
     
    private  var APPPREFIX_isQuickLoginEnabled = false
    private var APPPREFIX_initialURLString:String
    
    init(APPPREFIX_urlString:String,APPPREFIX_quickLoginEnabled:Bool) {
        APPPREFIX_initialURLString = APPPREFIX_urlString
        
        APPPREFIX_isQuickLoginEnabled = APPPREFIX_quickLoginEnabled
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        let APPPREFIX_userContentController = APPPREFIX_webViewContainer?.configuration.userContentController
        APPPREFIX_userContentController?.add(self, name: APPPREFIX_SDKConstString.APPPREFIX_54)
        APPPREFIX_userContentController?.add(self, name: APPPREFIX_SDKConstString.APPPREFIX_55)
        APPPREFIX_userContentController?.add(self, name: APPPREFIX_SDKConstString.APPPREFIX_56)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        APPPREFIX_webViewContainer?.configuration.userContentController.removeAllScriptMessageHandlers()
    }

 
    private func APPPREFIX_addBackgroundImageView()  {
        let APPPREFIX_laungchstr = APPPREFIX_SDKConfig.shared.APPPREFIX_mainBackgroundImage
        
        let APPPREFIX_backgroundImage = UIImage(named: APPPREFIX_laungchstr)
       
        let APPPREFIX_BbckgroundImageView = UIImageView(image:APPPREFIX_backgroundImage )
        APPPREFIX_BbckgroundImageView.contentMode = .scaleAspectFill
        APPPREFIX_BbckgroundImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(APPPREFIX_BbckgroundImageView)
       
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        APPPREFIX_addBackgroundImageView()
        
        if APPPREFIX_isQuickLoginEnabled == true {
            APPPREFIX_addLoginButton()
            APPPREFIX_addSmallImageView()
        }
    
        let APPPREFIX_webConfig = WKWebViewConfiguration()
        APPPREFIX_webConfig.allowsAirPlayForMediaPlayback = false
        APPPREFIX_webConfig.allowsInlineMediaPlayback = true
        APPPREFIX_webConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        APPPREFIX_webConfig.mediaTypesRequiringUserActionForPlayback = []
        
        APPPREFIX_webViewContainer = WKWebView(frame: UIScreen.main.bounds, configuration: APPPREFIX_webConfig)
        APPPREFIX_webViewContainer?.isHidden = true
        APPPREFIX_webViewContainer?.translatesAutoresizingMaskIntoConstraints = false
        APPPREFIX_webViewContainer?.scrollView.alwaysBounceVertical = false
        APPPREFIX_webViewContainer?.scrollView.contentInsetAdjustmentBehavior = .never
        APPPREFIX_webViewContainer?.navigationDelegate = self
        APPPREFIX_webViewContainer?.uiDelegate = self
        APPPREFIX_webViewContainer?.allowsBackForwardNavigationGestures = true
       
        if let APPPREFIX_url = URL(string: APPPREFIX_initialURLString) {
            APPPREFIX_webViewContainer?.load(URLRequest(url: APPPREFIX_url))
           
        }
        
        view.addSubview(APPPREFIX_webViewContainer!)
        
        APPPREFIX_AppIndicatorMannager.APPPREFIX_show(APPPREFIX_info: APPPREFIX_SDKConstString.APPPREFIX_11)
    }
    private func APPPREFIX_addLoginButton()  {
        let  APPPREFIX_loginButton = UIButton.init()
        let APPPREFIX_laungchstr = APPPREFIX_SDKConfig.shared.APPPREFIX_loginButtonBackImage
        
        let APPPREFIX_backgroundImage = UIImage(named: APPPREFIX_laungchstr)
     
        APPPREFIX_loginButton.setBackgroundImage(APPPREFIX_backgroundImage, for: .normal)
        if APPPREFIX_SDKConfig.shared.APPPREFIX_loginButtonBackImage == "" {
            APPPREFIX_loginButton.layer.cornerRadius = 10
            APPPREFIX_loginButton.layer.masksToBounds = true
            APPPREFIX_loginButton.backgroundColor = .white
        }
        
        APPPREFIX_loginButton.setTitleColor(APPPREFIX_SDKConfig.shared.APPPREFIX_logButtonTextColor, for: .normal)
        APPPREFIX_loginButton.setTitle(APPPREFIX_SDKConstString.APPPREFIX_22, for: .normal)
        APPPREFIX_loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        APPPREFIX_loginButton.isUserInteractionEnabled = false
        
        view.addSubview(APPPREFIX_loginButton)
       
        APPPREFIX_loginButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            APPPREFIX_loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            APPPREFIX_loginButton.heightAnchor.constraint(equalToConstant: APPPREFIX_SDKConfig.shared.APPPREFIX_logButtonHeight),
            APPPREFIX_loginButton.widthAnchor.constraint(equalToConstant: APPPREFIX_SDKConfig.shared.APPPREFIX_logButtonWidth),
            APPPREFIX_loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 55)
        ])
       
    }
    private  func APPPREFIX_addSmallImageView() {
        if APPPREFIX_SDKConfig.shared.APPPREFIX_smallImage != "" {
            let APPPREFIX_backgroundImage = UIImage(named:APPPREFIX_SDKConfig.shared.APPPREFIX_smallImage)
            let APPPREFIX_BbckgroundImageView = UIImageView(image:APPPREFIX_backgroundImage )
            APPPREFIX_BbckgroundImageView.contentMode = .scaleAspectFill

            APPPREFIX_BbckgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(APPPREFIX_BbckgroundImageView)
            NSLayoutConstraint.activate([
                APPPREFIX_BbckgroundImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                APPPREFIX_BbckgroundImageView.heightAnchor.constraint(equalToConstant:APPPREFIX_SDKConfig.shared.APPPREFIX_smallImageHeight),
                APPPREFIX_BbckgroundImageView.widthAnchor.constraint(equalToConstant: APPPREFIX_SDKConfig.shared.APPPREFIX_smallImageWidth),
                APPPREFIX_BbckgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                            constant: -self.view.safeAreaInsets.bottom - 55 - APPPREFIX_SDKConfig.shared.APPPREFIX_logButtonHeight - 30)
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
       
        APPPREFIX_webViewContainer?.isHidden = false
        APPPREFIX_AppIndicatorMannager.APPPREFIX_dismiss()

        if APPPREFIX_isQuickLoginEnabled == true {
            APPPREFIX_isQuickLoginEnabled = false
        }

    }

    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {

        if message.name == APPPREFIX_SDKConstString.APPPREFIX_54,
           let APPPREFIX_payload = message.body as? [String: Any] {

            let APPPREFIX_productID = APPPREFIX_payload[APPPREFIX_SDKConstString.APPPREFIX_57] as? String ?? ""
            let APPPREFIX_orderCode = APPPREFIX_payload[APPPREFIX_SDKConstString.APPPREFIX_58] as? String ?? ""

            view.isUserInteractionEnabled = false
            APPPREFIX_AppIndicatorMannager.APPPREFIX_show(APPPREFIX_info: APPPREFIX_SDKConstString.APPPREFIX_59)
            SwiftyStoreKit.purchaseProduct(APPPREFIX_productID) { PurchaseResult in
                APPPREFIX_AppIndicatorMannager.APPPREFIX_dismiss()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = PurchaseResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    if !psdownloads.isEmpty {
                        SwiftyStoreKit.start(psdownloads)
                    }
                    guard let receiptData = SwiftyStoreKit.localReceiptData,
                          let transactionID = psPurch.transaction.transactionIdentifier,
                          transactionID.count > 5 else {
                        APPPREFIX_AppIndicatorMannager.APPPREFIX_showInfo(APPPREFIX_withStatus: APPPREFIX_SDKConstString.APPPREFIX_60)
                        return
                    }
                   
                    guard let APPPREFIX_jsonData = try? JSONSerialization.data(
                            withJSONObject: [APPPREFIX_SDKConstString.APPPREFIX_58: APPPREFIX_orderCode],
                            options: [.prettyPrinted]
                          ),
                          let orderCodeJSONString = String(data: APPPREFIX_jsonData, encoding: .utf8) else {
                        APPPREFIX_AppIndicatorMannager.APPPREFIX_showInfo(APPPREFIX_withStatus: APPPREFIX_SDKConstString.APPPREFIX_60)
                        return
                    }

                    APPPREFIX_NetworkMannager.shared.APPPREFIX_postRequest(
                        APPPREFIX_SDKConfig.shared.APPPREFIX_verifyReciptyPath,
                                APPPREFIX_params: [
                            APPPREFIX_SDKConfig.shared.APPPREFIX_verifyReciptyParamaKey.APPPREFIX_payload:
                                receiptData.base64EncodedString(),

                            APPPREFIX_SDKConfig.shared.APPPREFIX_verifyReciptyParamaKey.APPPREFIX_transactionId:
                                transactionID,

                            APPPREFIX_SDKConfig.shared.APPPREFIX_verifyReciptyParamaKey.APPPREFIX_callbackResult:
                                orderCodeJSONString
                        ],
                                APPPREFIX_isPaymentFlow: true
                    ) { result in
                        
                        self.view.isUserInteractionEnabled = true

                        switch result {
                        case .success:
                            self.APPPREFIX_reportPurchaseAnalytics(APPPREFIX_transactionID: transactionID, APPPREFIX_productID: APPPREFIX_productID)
                            APPPREFIX_AppIndicatorMannager.APPPREFIX_showSuccess(APPPREFIX_withStatus: APPPREFIX_SDKConstString.APPPREFIX_30)
                           
                        case .failure:
                            APPPREFIX_AppIndicatorMannager.APPPREFIX_showInfo(APPPREFIX_withStatus: APPPREFIX_SDKConstString.APPPREFIX_60)
                        }
                    }

                }else if case .error(let error) = PurchaseResult {
                 
                    if error.code == .paymentCancelled {
                        self.view.isUserInteractionEnabled = true
                        return
                    }
                    self.view.isUserInteractionEnabled = true
                    APPPREFIX_AppIndicatorMannager.APPPREFIX_showInfo(APPPREFIX_withStatus: error.localizedDescription)
                    
                }
            }


            return
        }


      
        if message.name == APPPREFIX_SDKConstString.APPPREFIX_55 {

            UserDefaults.standard.set(nil, forKey: APPPREFIX_SDKConstString.APPPREFIX_62)

            let APPPREFIX_nav = APPPREFIX_APPLoginController()
            APPPREFIX_AppLaunchController.APPPREFIX_mainWindow?.rootViewController = APPPREFIX_nav

            return
        }


        if message.name == APPPREFIX_SDKConstString.APPPREFIX_56 {
            APPPREFIX_webViewContainer?.isHidden = false
            APPPREFIX_AppIndicatorMannager.APPPREFIX_dismiss()
        }
    }

 


    private func APPPREFIX_reportPurchaseAnalytics(APPPREFIX_transactionID:String,APPPREFIX_productID:String) {
        guard let APPPREFIX_priceTuple = APPPREFIX_SDKConfig.shared.APPPREFIX_purchaseParama.first(where: { $0.0 == APPPREFIX_productID }),
              let APPPREFIX_priceValue = Double(APPPREFIX_priceTuple.1) else { return }
        
        let APPPREFIX_fbParams: [AppEvents.ParameterName: Any] = [
            .init(APPPREFIX_SDKConstString.APPPREFIX_64): APPPREFIX_priceValue,
            .init(APPPREFIX_SDKConstString.APPPREFIX_65): APPPREFIX_SDKConstString.APPPREFIX_66
        ]
        AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: APPPREFIX_fbParams)

       
        let APPPREFIX_adjustEvent = ADJEvent(eventToken: APPPREFIX_SDKConfig.shared.APPPREFIX_adjustPurchaseToken)
        APPPREFIX_adjustEvent?.setProductId(APPPREFIX_productID)
        APPPREFIX_adjustEvent?.setTransactionId(APPPREFIX_transactionID)
        APPPREFIX_adjustEvent?.setRevenue(APPPREFIX_priceValue, currency: APPPREFIX_SDKConstString.APPPREFIX_66)

        Adjust.trackEvent(APPPREFIX_adjustEvent)
      
    }
}
    
