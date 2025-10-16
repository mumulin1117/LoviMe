//
//  EchoCircleController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit
enum InteractionType {
    case videoCall, liveReaction, qnaSession
}
class EchoCircleController: UIViewController {
    enum ecentTime :Int{
    
        case all = 0
        case music  = 1
        case dance = 2
        
    }
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
        
    
    private var chioker:ecentTime = .all
    
    @IBOutlet weak var visualHarmony: UICollectionView!
    
    
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
    
    private func setupAudienceStage() {
          view.backgroundColor = .systemBackground
          
          view.addSubview(connectionWave)
          
          
          NSLayoutConstraint.activate([
              connectionWave.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
              connectionWave.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
              connectionWave.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
              
             
          ])
      }
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        creativeHarmony()
        visualPerformer()
       
        urbanExpressionFlow()
        
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
        urbanEnergy(path: "/xstmcdoyz/vsrayjvz", dicot: ["artMoodFlow":VisualEcho.publicRhythm,"performBlend":chioker.rawValue])
        
    }

    private func creativeHarmony()  {
        visualHarmony.backgroundColor = .clear
        visualHarmony.showsHorizontalScrollIndicator = false
        
        let laoi = UICollectionViewFlowLayout.init()
        let sizefor = CGSize.init(width: (UIScreen.main.bounds.width - 36 - 11)/2, height: 240)
        laoi.minimumInteritemSpacing = 11
        laoi.minimumInteritemSpacing = 11
        laoi.scrollDirection = .vertical
        laoi.itemSize = sizefor
        visualHarmony.collectionViewLayout = laoi
    }
    
    
    private func visualPerformer()  {
        visualHarmony.backgroundColor = .clear
        visualHarmony.register(UINib.init(nibName: "EchoCircleCell", bundle: nil), forCellWithReuseIdentifier: "EchoCircleCell")
    }
    
    @IBOutlet weak var indidavereshing: UIView!
    
 
    
    private func urbanExpressionFlow()  {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }

    @IBAction func visualSoul(_ sender: UIButton) {
        
        
        if sender.tag ==  11{
            chioker = .all
            
            
        }
        
        if sender.tag ==  12{
            chioker = .music
        }
        
        if sender.tag ==  13{
            chioker = .dance
        }
        indidavereshing.center.x = sender.center.x + 10
        
        
        
        
        urbanEnergy(path: "/xstmcdoyz/vsrayjvz", dicot: ["artMoodFlow":VisualEcho.publicRhythm,"performBlend":chioker.rawValue])
        
    }
    
    
   
    
   @objc func lastoneperson()  {
       urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
}


extension EchoCircleController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let oiiiii = BoboRoomaesun.1[indexPath.row]
        let stageSpirit = collectionView.dequeueReusableCell(withReuseIdentifier: "EchoCircleCell", for: indexPath) as! EchoCircleCell
       
        stageSpirit.visualToneFlow.urbanTone(streetEcho: oiiiii["artDream"] as? String)
        stageSpirit.artSpiritWave.text = oiiiii["creativeToneFlow"] as? String
        stageSpirit.creativeJourneyFlow.urbanTone(streetEcho: oiiiii["urbanGroove"] as? String)
        stageSpirit.sceneMoodFlow.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        return stageSpirit
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let oiiiii = BoboRoomaesun.1[indexPath.row]
        
       
        if let yeonm = oiiiii["streetStage"] as? Int {
            urbanExpressionFlow(stageWave: AArtPerception.creativeAura, streetSoul:"\(yeonm)")
            
        }
    }
    
}
extension EchoCircleController{
   
   
    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        let performanceStart = Date().timeIntervalSince1970
        let audienceEnergy = Int(performanceStart) % 100
        
        artFusion.startAnimating()
        
        let stagePresence = path.count > 0
        if stagePresence {
            let performanceTools = ["microphone", "guitar", "speaker"]
            let _ = performanceTools.randomElement()
        }
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            let creativeStart = Date().timeIntervalSince1970
            self.artFusion.stopAnimating()
            
            let creativeFlow = self.artFusion.isAnimating == false
            if creativeFlow {
                let artisticExpression = dicot.count * 2
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
                let performanceImpact = craftAura.count * 3 - craftAura.count * 2
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
