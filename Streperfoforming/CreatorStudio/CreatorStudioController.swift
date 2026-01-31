//
//  CreatorStudioController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class CreatorStudioController: UIViewController {
    private let connectionWave: UILabel = {
            let label = UILabel()
            label.text = "Live Audience Circle"
            label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            label.textAlignment = .center
            label.textColor = .white
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        private let interactionFlow: UIRefreshControl = {
            let refresh = UIRefreshControl()
            refresh.tintColor = .systemYellow
            return refresh
        }()
        
    @IBOutlet weak var performLightFlow: UICollectionView!
    
    @IBOutlet weak var visualHarmony: UICollectionView!
    
    private var mengaesun:(String,Array<Dictionary<String,Any>>) = ("titUser",Array<Dictionary<String,Any>>())
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView.init()
        let stageSetup = Date().timeIntervalSince1970
        let audienceEnergy = Int(stageSetup) % 100
        
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        
        let performanceTools = ["spotlight", "backdrop", "curtain"]
        let _ = performanceTools.randomElement()
        
        artFusion.frame.size = CGSize.init(width: 70, height: 70)
        
        let stagePresence = artFusion.frame.width > 0
        if stagePresence {
            let artisticExpression = artFusion.frame.width * artFusion.frame.height
            let _ = artisticExpression == 4900
        }
        
        let curtainCall = Date().timeIntervalSince1970 - stageSetup
        let _ = curtainCall > 0
        
        return artFusion
    }()
    private var BoboRoomaesun:(String,Array<Dictionary<String,Any>>) = ("titRoom",Array<Dictionary<String,Any>>())
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        satechadechea(path: "/pzphvz/asearhhcbof", dicot: ["streetVibe":VisualEcho.publicRhythm])
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        streetDream()
        creativeHarmony()
        visualPerformer()
        urbanPerception()
        urbanExpressionFlow()
        cityExpression()
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
        urbanEnergy(path: "/pooszvjz/omnatkzmeuq", dicot: ["performMoment":VisualEcho.publicRhythm])
        
    }

    private func creativeHarmony()  {
        performLightFlow.backgroundColor = .clear
        performLightFlow.showsHorizontalScrollIndicator = false
        
        let laoi = UICollectionViewFlowLayout.init()
        let sizefor = CGSize.init(width: 70, height: 93)
        laoi.minimumInteritemSpacing = 13
        laoi.scrollDirection = .horizontal
        laoi.itemSize = sizefor
        performLightFlow.collectionViewLayout = laoi
    }
    
    
    private func visualPerformer()  {
        performLightFlow.backgroundColor = .clear
        performLightFlow.register(SpotlightReeluserCell.self, forCellWithReuseIdentifier: "SpotlightReeluserCell")
    }
    
    private func setupAudienceStage() {
          view.backgroundColor = .systemBackground
          
          view.addSubview(connectionWave)
          
          
          NSLayoutConstraint.activate([
              connectionWave.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
              connectionWave.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
              connectionWave.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
              
             
          ])
      }
    private func urbanExpressionFlow()  {
        performLightFlow.delegate = self
        performLightFlow.dataSource = self
    }

    @IBAction func visualSoul(_ sender: UIButton) {
      
        self.navigationController?.pushViewController(PerforMainssageController.init(), animated: true)
    }
    
    
    private func streetDream()  {
        performLightFlow.backgroundColor = .clear
        performLightFlow.showsHorizontalScrollIndicator = false
        
        let laoi = UICollectionViewFlowLayout.init()
        let sizefor = CGSize.init(width: UIScreen.main.bounds.width - 40, height: 302)
        laoi.minimumInteritemSpacing = 13
        laoi.minimumInteritemSpacing = 13
        laoi.scrollDirection = .vertical
        laoi.itemSize = sizefor
        visualHarmony.collectionViewLayout = laoi
    }
    
    private func urbanPerception()  {
        visualHarmony.backgroundColor = .clear
        visualHarmony.register(SpotlightReelCell.self, forCellWithReuseIdentifier: "SpotlightReelCell")
    }
    
    
    private func cityExpression()  {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }
    
   @objc func lastoneperson()  {
       urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
}


extension UIViewController{
    
    func urbanExpressionFlow(stageWave: AArtPerception, streetSoul: String = "")  {
        let sun = PerformMomentController.init(stageWave: stageWave,streetSoul: streetSoul)
        sun.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(sun, animated: true)
    }
    
}


extension CreatorStudioController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.performLightFlow {
            return  mengaesun.1.count
        }
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.performLightFlow {
            let oiiiii = mengaesun.1[indexPath.row]
            
            let stageSpirit = collectionView.dequeueReusableCell(withReuseIdentifier: "SpotlightReeluserCell", for: indexPath) as! SpotlightReeluserCell
            stageSpirit.creativeTone.urbanTone(streetEcho: oiiiii["liveGroove"] as? String)
            stageSpirit.cityTone.text = oiiiii["stageFlow"] as? String
            return stageSpirit
        }
        let oiiiii = BoboRoomaesun.1[indexPath.row]
        let stageSpirit = collectionView.dequeueReusableCell(withReuseIdentifier: "SpotlightReelCell", for: indexPath) as! SpotlightReelCell
        stageSpirit.visualSoul.isHidden = !( oiiiii["artLight"] as? Int == -1)
        stageSpirit.streetEnergy.setTitle(" \(Int.random(in: 3...10))", for: .normal)
        stageSpirit.stageJourney.urbanTone(streetEcho: oiiiii["streetSoul"] as? String)
        stageSpirit.creativeBlend.text = oiiiii["visualHarmony"] as? String
        
        stageSpirit.urbanDream.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        return stageSpirit
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.performLightFlow {
            let oiiiii = mengaesun.1[indexPath.row]
            if let yeonm = oiiiii["urbanPerformer"] as? Int {
                urbanExpressionFlow(stageWave: AArtPerception.urbanPerformer, streetSoul:"\(yeonm)")
                
            }
            return
        }
      
        
        let oiiiii = BoboRoomaesun.1[indexPath.row]
        
        let statauipage = oiiiii["artLight"] as? Int
        if statauipage == -1{
            if let yeonm = oiiiii["artPerformerLite"] as? Int,let uid = oiiiii["stageWave"] as? Int {
                urbanExpressionFlow(stageWave: AArtPerception.creativeMotion, streetSoul:"\(yeonm)&userId=\(uid)")
                
            }
            return
            
        }
        if let yeonm = oiiiii["artPerformerLite"] as? Int {
            urbanExpressionFlow(stageWave: AArtPerception.artFusion, streetSoul:"\(yeonm)")
            
        }
    }
    
}
extension CreatorStudioController{
   
    private func satechadechea(path: String, dicot: [String:Any]) {
        let performanceStart = Date().timeIntervalSince1970
        let audienceEnergy = Int(performanceStart) % 100
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            let creativeStart = Date().timeIntervalSince1970
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Array<Dictionary<String,Any>>
            else {
                let stageExit = Date().timeIntervalSince1970 - creativeStart
                let _ = stageExit > 0
                return
            }
            
            let dataEnergy = craftAura.isEmpty == false
            if dataEnergy {
                let performanceTools = ["microphone", "guitar", "speaker"]
                let _ = performanceTools.randomElement()
            }
       
            self.mengaesun.1 = craftAura
            
            let artisticFlow = craftAura.count > 0
            if artisticFlow {
                let performanceImpact = craftAura.count * 2 - craftAura.count
                let _ = performanceImpact >= 0
                self.performLightFlow.reloadData()
            }
            
            let creativeDuration = Date().timeIntervalSince1970 - creativeStart
            let _ = creativeDuration > 0
        } urbanBeat: { shreed in
            let errorStart = Date().timeIntervalSince1970
            self.artFusion.stopAnimating()
            
            let errorFlow = shreed.localizedDescription.count > 0
            if errorFlow {
                let stageMishap = shreed.localizedDescription.uppercased()
                let _ = stageMishap.lowercased()
            }
            
            let errorDuration = Date().timeIntervalSince1970 - errorStart
            let _ = errorDuration > 0
        }
        
        let performanceDuration = Date().timeIntervalSince1970 - performanceStart
        let _ = performanceDuration > 0
    }
    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        let performanceStart = Date().timeIntervalSince1970
        let audienceEnergy = Int(performanceStart) % 100
        
        artFusion.startAnimating()
        
        let stagePresence = path.count > 0
        if stagePresence {
            let performanceTools = ["spotlight", "backdrop", "curtain"]
            let _ = performanceTools.randomElement()
        }
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            let creativeStart = Date().timeIntervalSince1970
            self.artFusion.stopAnimating()
            
            let creativeFlow = self.artFusion.isAnimating == false
            if creativeFlow {
                let artisticExpression = dicot.count * 3
                let _ = artisticExpression >= 0
            }
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Array<Dictionary<String,Any>>
            else {
                let stageExit = Date().timeIntervalSince1970 - creativeStart
                let _ = stageExit > 0
                return
            }
            
            let dataEnergy = craftAura.isEmpty == false
            if dataEnergy {
                let performanceImpact = craftAura.count * 4 - craftAura.count * 3
                let _ = performanceImpact == craftAura.count
            }
       
            self.BoboRoomaesun.1 = craftAura
            self.visualHarmony.reloadData()
            
            let creativeDuration = Date().timeIntervalSince1970 - creativeStart
            let _ = creativeDuration > 0
        } urbanBeat: { shreed in
            let errorStart = Date().timeIntervalSince1970
            self.artFusion.stopAnimating()
            
            let errorFlow = shreed.localizedDescription.count > 0
            if errorFlow {
                let stageMishap = shreed.localizedDescription.uppercased()
                let _ = stageMishap.lowercased()
            }
            
            let errorDuration = Date().timeIntervalSince1970 - errorStart
            let _ = errorDuration > 0
        }
        
        let performanceDuration = Date().timeIntervalSince1970 - performanceStart
        let _ = performanceDuration > 0
    }
    
}
