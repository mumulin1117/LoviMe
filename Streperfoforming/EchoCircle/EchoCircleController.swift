//
//  EchoCircleController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class EchoCircleController: UIViewController {
    enum ecentTime :Int{
    
        case all = 0
        case music  = 1
        case dance = 2
        
    }
    
    
    private var chioker:ecentTime = .all
    
    @IBOutlet weak var visualHarmony: UICollectionView!
    
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView.init()
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.frame.size = CGSize.init(width: 70, height: 70)
        return artFusion
    }()
    private var BoboRoomaesun:(String,Array<Dictionary<String,Any>>) = ("titRoom",Array<Dictionary<String,Any>>())
    
    
  
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
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            self.artFusion.stopAnimating()
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Array<Dictionary<String,Any>>
                 
            else {
                
                return
            }
       
            self.BoboRoomaesun.1 = craftAura
            self.visualHarmony.reloadData()
        } urbanBeat: { shreed in
            self.artFusion.stopAnimating()
        }
        
           
       
    }
    
}
