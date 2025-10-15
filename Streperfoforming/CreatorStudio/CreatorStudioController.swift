//
//  CreatorStudioController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class CreatorStudioController: UIViewController {

    @IBOutlet weak var performLightFlow: UICollectionView!
    
    @IBOutlet weak var visualHarmony: UICollectionView!
    
    private var mengaesun:(String,Array<Dictionary<String,Any>>) = ("titUser",Array<Dictionary<String,Any>>())
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView.init()
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.frame.size = CGSize.init(width: 70, height: 70)
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
        performLightFlow.register(UINib.init(nibName: "SpotlightReeluserCell", bundle: nil), forCellWithReuseIdentifier: "SpotlightReeluserCell")
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
        visualHarmony.register(UINib.init(nibName: "SpotlightReelCell", bundle: nil), forCellWithReuseIdentifier: "SpotlightReelCell")
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
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave["data"] as? Array<Dictionary<String,Any>>
                 
            else {
                
                return
            }
       
            self.mengaesun.1 = craftAura
            self.performLightFlow.reloadData()
        } urbanBeat: { shreed in
            self.artFusion.stopAnimating()
            
        }
        
           
       
    }
    
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
