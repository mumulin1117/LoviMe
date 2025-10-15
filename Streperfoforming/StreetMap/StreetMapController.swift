//
//  StreetMapController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class StreetMapController: UIViewController {
    enum ecentTime :Int{
    
        case Hot = 0
        case ForU  = 1
       
    }
    
    
    private var chioker:ecentTime = .Hot
    
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
        urbanEnergy(path: "/cbzedszyvhnybqz/fhgroocpcsx", dicot: ["creativeStage":VisualEcho.publicRhythm,"visualPulse":chioker.rawValue,"openJam":15,"artJourney":1,"urbanSoul":1])
        
    }

    private func creativeHarmony()  {
        visualHarmony.backgroundColor = .clear
        visualHarmony.showsHorizontalScrollIndicator = false
        
        let laoi = UICollectionViewFlowLayout.init()
        let sizefor = CGSize.init(width: 268, height: visualHarmony.frame.height)
        laoi.minimumInteritemSpacing = 22
        laoi.minimumInteritemSpacing = 22
        laoi.scrollDirection = .horizontal
        laoi.itemSize = sizefor
        visualHarmony.collectionViewLayout = laoi
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let laoi = UICollectionViewFlowLayout.init()
        let sizefor = CGSize.init(width: 268, height: visualHarmony.frame.height)
        laoi.minimumInteritemSpacing = 22
        laoi.minimumInteritemSpacing = 22
        laoi.scrollDirection = .horizontal
        laoi.itemSize = sizefor
        visualHarmony.collectionViewLayout = laoi
    }
    private func visualPerformer()  {
        visualHarmony.backgroundColor = .clear
        visualHarmony.register(UINib.init(nibName: "StreetMapCell", bundle: nil), forCellWithReuseIdentifier: "StreetMapCell")
    }
    
    @IBOutlet weak var indidavereshing: UIView!
    
 
    
    private func urbanExpressionFlow()  {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }

    @IBAction func visualSoul(_ sender: UIButton) {
        
        
        if sender.tag ==  11{
            chioker = .Hot
            
            
        }
        
        if sender.tag ==  12{
            chioker = .ForU
        }
        
      
        indidavereshing.center.x = sender.center.x + 10
        
        
        
        
        urbanEnergy(path: "/cbzedszyvhnybqz/fhgroocpcsx", dicot: ["creativeStage":VisualEcho.publicRhythm,"visualPulse":chioker.rawValue,"openJam":15,"artJourney":1,"urbanSoul":1])
        
    }
    
    
   
    
   @objc func lastoneperson()  {
       urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
}


extension StreetMapController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let oiiiii = BoboRoomaesun.1[indexPath.row]
        let stageSpirit = collectionView.dequeueReusableCell(withReuseIdentifier: "StreetMapCell", for: indexPath) as! StreetMapCell
       
        stageSpirit.artRhythmist.setTitle(" \(Int.random(in: 2...18))", for: .normal)
        stageSpirit.creativeHarmony.urbanTone(streetEcho: (oiiiii["stageBreeze"] as? Array<String>)?.first)
        stageSpirit.artSpirit.urbanTone(streetEcho: (oiiiii["artFusionist"] as? String))
                                       
        stageSpirit.urbanEcho.text = oiiiii["urbanFrame"] as? String
        
        stageSpirit.creativeFusion.text = oiiiii["cityCanvas"] as? String
       
        stageSpirit.stageMoment.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        
        stageSpirit.urbanExpressionFlow.tag = indexPath.row
        stageSpirit.urbanExpressionFlow.addTarget(self, action: #selector(callsharet(gvall:)), for: .touchUpInside)
        
        
        return stageSpirit
        
    }
    
    
   @objc func callsharet(gvall:UIButton)  {
       let oiiiii = BoboRoomaesun.1[gvall.tag ]
       if let yeonm = oiiiii["performLens"] as? String {
           urbanExpressionFlow(stageWave: AArtPerception.urbanPerformer, streetSoul:"\(yeonm)&CallVideo=1")
           
       }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let oiiiii = BoboRoomaesun.1[indexPath.row]
        
       
        if let yeonm = oiiiii["publicRhythm"] as? Int {
            urbanExpressionFlow(stageWave: AArtPerception.cityEcho, streetSoul:"\(yeonm)")
            
        }
    }
    
}
extension StreetMapController{
   
   
    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            self.artFusion.stopAnimating()
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave["data"] as? Array<Dictionary<String,Any>>
                 
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
