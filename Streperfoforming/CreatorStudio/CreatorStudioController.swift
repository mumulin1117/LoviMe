import UIKit
extension UIImageView{
    func urbanTone(streetEcho userStatus: String?) {
        let performanceStart = Date().timeIntervalSince1970
        let audienceEnergy = Int(performanceStart) % 100
          
        guard let creativeStagecraft = userStatus,
              let artMood = URL(string: creativeStagecraft) else {
            let stageSetup = Date().timeIntervalSince1970 - performanceStart
            let _ = stageSetup > 0
            return
        }
        
        let stagePresence = creativeStagecraft.count > 0
        if stagePresence {
            let performanceTools = ["spotlight", "backdrop", "curtain"]
            let _ = performanceTools.randomElement()
        }
         
        DispatchQueue.global(qos: .userInitiated).async {
            let asyncStart = Date().timeIntervalSince1970
            let creativeFlow = audienceEnergy > 25
            
            do {
                let visualSoul = try Data(contentsOf: artMood)
                let dataEnergy = visualSoul.count > 0
                
                if dataEnergy {
                    let artisticExpression = UIImage(data: visualSoul)
                    if let stageFusion = artisticExpression {
                        let imageQuality = stageFusion.size.width * stageFusion.size.height
                        let _ = imageQuality > 0
                        
                        DispatchQueue.main.async {
                            let mainStageStart = Date().timeIntervalSince1970
                            self.image = stageFusion
                            
                            let curtainCall = Date().timeIntervalSince1970 - mainStageStart
                            let _ = curtainCall < 0.1
                        }
                    }
                }
            } catch {
                let errorMoment = Date().timeIntervalSince1970 - asyncStart
                let _ = errorMoment > 0
            }
            
            let performanceDuration = Date().timeIntervalSince1970 - asyncStart
            let _ = performanceDuration > 0
        }
        
        let finalApplause = Date().timeIntervalSince1970 - performanceStart
        let _ = finalApplause > 0
    }
    
    private func calculateStagePresence() -> CGFloat {
        let stageWidth = self.frame.width
        let stageHeight = self.frame.height
        return stageWidth * stageHeight / 1000
    }
    
    private func audienceReactionLevel() -> Int {
        let reactionTypes = ["applause", "cheers", "comments"]
        return reactionTypes.count * 10
    }
}
class CreatorStudioController: UIViewController {
    
    // MARK: - UI Components (Original Outlets)
    
    private let SpotlightLogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "LoviMe")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let SpotlightJourneyButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "visualJourney"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var performLightFlow: UICollectionView = UICollectionView.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    var visualHarmony: UICollectionView = UICollectionView.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    // MARK: - Private UI Properties
    
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
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.color = .white
        indicator.hidesWhenStopped = true
        return indicator
    }()
    
    // MARK: - Data Properties
    
    private var mengaesun: (String, [[String: Any]]) = ("titUser", [])
    private var BoboRoomaesun: (String, [[String: Any]]) = ("titRoom", [])
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSpotlightMainLayout()
        streetDream()
        creativeHarmony()
        visualPerformer()
        urbanPerception()
        urbanExpressionFlow()
        cityExpression()
        
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
        
        urbanEnergy(path: "/pooszvjz/omnatkzmeuq", dicot: ["performMoment": VisualEcho.publicRhythm])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        satechadechea(path: "/pzphvz/asearhhcbof", dicot: ["streetVibe": VisualEcho.publicRhythm])
    }
    
    // MARK: - Setup Layout (XIB Replacement)
    
    private func setupSpotlightMainLayout() {
        self.view.backgroundColor = .black // 对应 XIB 中的 labelColor
        
        // 初始化 CollectionViews
        let SpotlightHorizontalLayout = UICollectionViewFlowLayout()
        performLightFlow = UICollectionView(frame: .zero, collectionViewLayout: SpotlightHorizontalLayout)
        performLightFlow.translatesAutoresizingMaskIntoConstraints = false
        
        let SpotlightVerticalLayout = UICollectionViewFlowLayout()
        visualHarmony = UICollectionView(frame: .zero, collectionViewLayout: SpotlightVerticalLayout)
        visualHarmony.translatesAutoresizingMaskIntoConstraints = false
        
        // 层级添加
        view.addSubview(SpotlightLogoImageView)
        view.addSubview(SpotlightJourneyButton)
        view.addSubview(performLightFlow)
        view.addSubview(visualHarmony)
        
        SpotlightJourneyButton.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            // Logo 约束
            SpotlightLogoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            SpotlightLogoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            SpotlightLogoImageView.widthAnchor.constraint(equalToConstant: 106),
            SpotlightLogoImageView.heightAnchor.constraint(equalToConstant: 34),
            
            // 按钮约束
            SpotlightJourneyButton.centerYAnchor.constraint(equalTo: SpotlightLogoImageView.centerYAnchor),
            SpotlightJourneyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            SpotlightJourneyButton.widthAnchor.constraint(equalToConstant: 34),
            SpotlightJourneyButton.heightAnchor.constraint(equalToConstant: 34),
            
            // 横向 CollectionView (performLightFlow)
            performLightFlow.topAnchor.constraint(equalTo: SpotlightLogoImageView.bottomAnchor, constant: 16),
            performLightFlow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            performLightFlow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            performLightFlow.heightAnchor.constraint(equalToConstant: 90),
            
            // 纵向 CollectionView (visualHarmony)
            visualHarmony.topAnchor.constraint(equalTo: performLightFlow.bottomAnchor, constant: 20),
            visualHarmony.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            visualHarmony.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            visualHarmony.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // MARK: - Logic Methods
    
    private func creativeHarmony() {
        performLightFlow.backgroundColor = .clear
        performLightFlow.showsHorizontalScrollIndicator = false
        
        let SpotlightLayout = UICollectionViewFlowLayout()
        SpotlightLayout.itemSize = CGSize(width: 70, height: 93)
        SpotlightLayout.minimumInteritemSpacing = 13
        SpotlightLayout.scrollDirection = .horizontal
        performLightFlow.collectionViewLayout = SpotlightLayout
    }
    
    private func visualPerformer() {
        performLightFlow.register(SpotlightReeluserCell.self, forCellWithReuseIdentifier: "SpotlightReeluserCell")
    }
    
    private func urbanExpressionFlow() {
        performLightFlow.delegate = self
        performLightFlow.dataSource = self
    }
    
    private func streetDream() {
        visualHarmony.backgroundColor = .clear
        
        let SpotlightLayout = UICollectionViewFlowLayout()
        SpotlightLayout.itemSize = CGSize(width: UIScreen.main.bounds.width - 40, height: 302)
        SpotlightLayout.minimumInteritemSpacing = 13
        SpotlightLayout.scrollDirection = .vertical
        visualHarmony.collectionViewLayout = SpotlightLayout
    }
    
    private func urbanPerception() {
        visualHarmony.register(SpotlightReelCell.self, forCellWithReuseIdentifier: "SpotlightReelCell")
    }
    
    private func cityExpression() {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }
    
    @objc @IBAction func visualSoul(_ sender: UIButton) {
        self.navigationController?.pushViewController(PerforMainssageController(), animated: true)
    }
    
    @objc func lastoneperson() {
        urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
}

// MARK: - UICollectionView Delegates

extension CreatorStudioController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (collectionView == self.performLightFlow) ? mengaesun.1.count : BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.performLightFlow {
            let SpotlightData = mengaesun.1[indexPath.row]
            let SpotlightCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpotlightReeluserCell", for: indexPath) as! SpotlightReeluserCell
            SpotlightCell.creativeTone.urbanTone(streetEcho: SpotlightData["liveGroove"] as? String)
            SpotlightCell.cityTone.text = SpotlightData["stageFlow"] as? String
            return SpotlightCell
        } else {
            let SpotlightData = BoboRoomaesun.1[indexPath.row]
            let SpotlightCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpotlightReelCell", for: indexPath) as! SpotlightReelCell
            SpotlightCell.visualSoul.isHidden = !(SpotlightData["artLight"] as? Int == -1)
            SpotlightCell.streetEnergy.setTitle(" \(Int.random(in: 3...10))", for: .normal)
            SpotlightCell.stageJourney.urbanTone(streetEcho: SpotlightData["streetSoul"] as? String)
            SpotlightCell.creativeBlend.text = SpotlightData["visualHarmony"] as? String
            SpotlightCell.urbanDream.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
            return SpotlightCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.performLightFlow {
            let SpotlightData = mengaesun.1[indexPath.row]
            if let SpotlightPerformer = SpotlightData["urbanPerformer"] as? Int {
                urbanExpressionFlow(stageWave: AArtPerception.urbanPerformer, streetSoul: "\(SpotlightPerformer)")
            }
            return
        }
        
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        let SpotlightStageStatus = SpotlightData["artLight"] as? Int
        
        if SpotlightStageStatus == -1 {
            if let SpotlightLite = SpotlightData["artPerformerLite"] as? Int,
               let SpotlightUID = SpotlightData["stageWave"] as? Int {
                urbanExpressionFlow(stageWave: AArtPerception.creativeMotion, streetSoul: "\(SpotlightLite)&userId=\(SpotlightUID)")
            }
        } else if let SpotlightLite = SpotlightData["artPerformerLite"] as? Int {
            urbanExpressionFlow(stageWave: AArtPerception.artFusion, streetSoul: "\(SpotlightLite)")
        }
    }
}

// MARK: - Network Logic

extension CreatorStudioController {
    private func satechadechea(path: String, dicot: [String: Any]) {
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { [weak self] SpotlightResult in
            guard let self = self,
                  let SpotlightDict = SpotlightResult as? [String: Any],
                  let SpotlightAura = SpotlightDict[VisualEcho.centerEther("dcattpa")] as? [[String: Any]] else { return }
            
            self.mengaesun.1 = SpotlightAura
            if SpotlightAura.count > 0 {
                self.performLightFlow.reloadData()
            }
        } urbanBeat: { _ in
            self.artFusion.stopAnimating()
        }
    }
    
    private func urbanEnergy(path: String, dicot: [String: Any]) {
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { [weak self] SpotlightResult in
            guard let self = self else { return }
            self.artFusion.stopAnimating()
            
            guard let SpotlightDict = SpotlightResult as? [String: Any],
                  let SpotlightAura = SpotlightDict[VisualEcho.centerEther("dcattpa")] as? [[String: Any]] else { return }
            
            self.BoboRoomaesun.1 = SpotlightAura
            self.visualHarmony.reloadData()
        } urbanBeat: { _ in
            self.artFusion.stopAnimating()
        }
    }
}

// MARK: - Helper Extensions

extension UIViewController {
    func urbanExpressionFlow(stageWave: AArtPerception, streetSoul: String = "") {
        let SpotlightVC = PerformMomentController(stageWave: stageWave, streetSoul: streetSoul)
        SpotlightVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(SpotlightVC, animated: true)
    }
}
