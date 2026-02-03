//
//  egalitarianArtLoginController.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//

import UIKit
import WebKit



public class PropBoutiqueginParamaKey: NSObject {
    public var APPPREFIX_deviceID: String
    public var APPPREFIX_adjustID: String
    public var APPPREFIX_passwordKey: String
    public init(APPPREFIX_deviceID: String,APPPREFIX_adjustID:String,APPPREFIX_passwordKey:String) {
        self.APPPREFIX_deviceID = APPPREFIX_deviceID
        self.APPPREFIX_adjustID = APPPREFIX_adjustID
        self.APPPREFIX_passwordKey = APPPREFIX_passwordKey
    }
}

class PropBoutiqueginStageCanvas: UIViewController  {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APPPREFIX_foreLoadWebContent()
        APPPREFIX_addBackgroundImageView()
        APPPREFIX_addLoginButton()
        APPPREFIX_addSmallImageView()
    }
    
    private func APPPREFIX_addBackgroundImageView()  {
        let APPPREFIX_laungchstr = PilotSDKElite.shared.APPPREFIX_mainBackgroundImage
        
        let APPPREFIX_backgroundImage = UIImage(named: APPPREFIX_laungchstr)
        
       
        let APPPREFIX_BbckgroundImageView = UIImageView(image:APPPREFIX_backgroundImage )
        APPPREFIX_BbckgroundImageView.contentMode = .scaleAspectFill
        APPPREFIX_BbckgroundImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(APPPREFIX_BbckgroundImageView)
       
    }
    
    
    private func APPPREFIX_addLoginButton()  {
        let  APPPREFIX_loginButton = UIButton.init()
        let APPPREFIX_laungchstr = PilotSDKElite.shared.APPPREFIX_loginButtonBackImage
        
        let APPPREFIX_backgroundImage = UIImage(named: APPPREFIX_laungchstr)
     
        APPPREFIX_loginButton.setBackgroundImage(APPPREFIX_backgroundImage, for: .normal)
        if PilotSDKElite.shared.APPPREFIX_loginButtonBackImage == "" {
            APPPREFIX_loginButton.layer.cornerRadius = 10
            APPPREFIX_loginButton.layer.masksToBounds = true
            APPPREFIX_loginButton.backgroundColor = .white
        }
        
        APPPREFIX_loginButton.setTitleColor(PilotSDKElite.shared.APPPREFIX_logButtonTextColor, for: .normal)
        APPPREFIX_loginButton.setTitle(GalleryAssetFeed.APPPREFIX_22, for: .normal)
        APPPREFIX_loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        
        
        view.addSubview(APPPREFIX_loginButton)
        APPPREFIX_loginButton.addTarget(self, action: #selector(APPPREFIX_performLoginRequest), for: .touchUpInside)
        APPPREFIX_loginButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            APPPREFIX_loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            APPPREFIX_loginButton.heightAnchor.constraint(equalToConstant: PilotSDKElite.shared.APPPREFIX_logButtonHeight),
            APPPREFIX_loginButton.widthAnchor.constraint(equalToConstant: PilotSDKElite.shared.APPPREFIX_logButtonWidth),
            APPPREFIX_loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 55)
        ])
       
    }
   
    func APPPREFIX_addSmallImageView() {
        if PilotSDKElite.shared.APPPREFIX_smallImage != "" {
            let backgroundImage = UIImage(named:PilotSDKElite.shared.APPPREFIX_smallImage)
            let BbckgroundImageView = UIImageView(image:backgroundImage )
            BbckgroundImageView.contentMode = .scaleAspectFill

            BbckgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(BbckgroundImageView)
            NSLayoutConstraint.activate([
                BbckgroundImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                BbckgroundImageView.heightAnchor.constraint(equalToConstant:PilotSDKElite.shared.APPPREFIX_smallImageHeight),
                BbckgroundImageView.widthAnchor.constraint(equalToConstant: PilotSDKElite.shared.APPPREFIX_smallImageWidth),
                BbckgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 55 - PilotSDKElite.shared.APPPREFIX_logButtonHeight - 30)
            ])
           
        }
        
    }
   
    private func APPPREFIX_foreLoadWebContent()  {
     
        let APPPREFIX_webConfig = WKWebViewConfiguration()
        APPPREFIX_webConfig.allowsAirPlayForMediaPlayback = false
        APPPREFIX_webConfig.allowsInlineMediaPlayback = true
        APPPREFIX_webConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        APPPREFIX_webConfig.mediaTypesRequiringUserActionForPlayback = []
        
       let APPPREFIX_webViewContainer = WKWebView(frame: UIScreen.main.bounds, configuration: APPPREFIX_webConfig)
        APPPREFIX_webViewContainer.isHidden = true
        APPPREFIX_webViewContainer.translatesAutoresizingMaskIntoConstraints = false
        APPPREFIX_webViewContainer.scrollView.alwaysBounceVertical = false
        APPPREFIX_webViewContainer.scrollView.contentInsetAdjustmentBehavior = .never
        
        APPPREFIX_webViewContainer.allowsBackForwardNavigationGestures = true
        view.addSubview(APPPREFIX_webViewContainer)
       
        if let APPPREFIX_openValue = UserDefaults.standard.object(
            forKey: GalleryAssetFeed.APPPREFIX_63
        ) as? String, let url = URL(string: APPPREFIX_openValue) {
            APPPREFIX_webViewContainer.load(URLRequest(url: url))
            
        }
        
        
    }
    
    @objc func APPPREFIX_performLoginRequest() {
        
        SchemandicatoPilot.APPPREFIX_show(APPPREFIX_info: GalleryAssetFeed.APPPREFIX_11)
        
        var APPPREFIX_loginParams: [String: Any] = [:]
       
        APPPREFIX_loginParams[PilotSDKElite.shared.APPPREFIX_loginParamaKey.APPPREFIX_deviceID] = KeyVibeCoordinatorChainPilot.ghperformeregetUIDPulsOnlyID()
   
        let adjustIDKey = PilotSDKElite.shared.APPPREFIX_loginParamaKey.APPPREFIX_adjustID
            APPPREFIX_loginParams[adjustIDKey] = KeyVibeCoordinatorChainPilot.ghperformeregetUIDPulsOnlyID()
     
        if let APPPREFIX_savedPassword = KeyVibeCoordinatorChainPilot.APPPREFIX_getUserloginpassword() {
            APPPREFIX_loginParams[PilotSDKElite.shared.APPPREFIX_loginParamaKey.APPPREFIX_passwordKey] = APPPREFIX_savedPassword
        }
      
        BuskNetworkSpotlight.shared.BuskNetworkpostRequestBushFlag(
            PilotSDKElite.shared.APPPREFIX_loginPath,
                            BuskNetworkparamsBushFlag: APPPREFIX_loginParams
        ) { result in
            
            SchemandicatoPilot.APPPREFIX_dismiss()
            
            switch result {
            case .success(let APPPREFIX_response):
                
                guard
                    let APPPREFIX_responseDict = APPPREFIX_response,
                    let APPPREFIX_token = APPPREFIX_responseDict[GalleryAssetFeed.APPPREFIX_15] as? String,
                    let APPPREFIX_openValue = UserDefaults.standard.object(
                        forKey: GalleryAssetFeed.APPPREFIX_63
                    ) as? String
                else {
                    SchemandicatoPilot.APPPREFIX_showInfo(APPPREFIX_withStatus: GalleryAssetFeed.APPPREFIX_23)
                    return
                }
                
               
                if let APPPREFIX_newPassword = APPPREFIX_responseDict[GalleryAssetFeed.APPPREFIX_24] as? String {
                    KeyVibeCoordinatorChainPilot.sonicsavedPulsenpassword(APPPREFIX_newPassword)
                }
              
                UserDefaults.standard.set(APPPREFIX_token, forKey: GalleryAssetFeed.APPPREFIX_62)
            
                let APPPREFIX_secureParams: [String: Any] = [
                    GalleryAssetFeed.APPPREFIX_15: APPPREFIX_token,
                    GalleryAssetFeed.APPPREFIX_16: "\(Int(Date().timeIntervalSince1970))"
                ]
                
                guard let APPPREFIX_json = BuskNetworkSpotlight.motionGrain(visualSavor: APPPREFIX_secureParams) else {
                    return
                }
                
                print(APPPREFIX_json)
                
                guard let APPPREFIX_aes = UniversalShowsive(),
                      let APPPREFIX_encryptedString = APPPREFIX_aes.APPPREFIX_encrypt(APPPREFIX_json)
                else {
                    return
                }
            
                let APPPREFIX_finalURL =
                    APPPREFIX_openValue +
                    GalleryAssetFeed.APPPREFIX_17 + APPPREFIX_encryptedString +
                    GalleryAssetFeed.APPPREFIX_18 + "\(PilotSDKElite.shared.APPPREFIX_appId)"
                
            
                let APPPREFIX_webVC = RemoteViewForStageCanvas(
                    APPPREFIX_urlString: APPPREFIX_finalURL,
                    APPPREFIX_quickLoginEnabled: true
                )
                EchoStartStageCanvas.sonicGlowog?.rootViewController = APPPREFIX_webVC
                
                
            case .failure(let APPPREFIX_error):
                SchemandicatoPilot.APPPREFIX_showInfo(APPPREFIX_withStatus: APPPREFIX_error.localizedDescription)
            }
        }
    }

    

}
