import UIKit

// MARK: - Interaction Type
enum InteractionType {
    case videoCall, liveReaction, qnaSession
}

class EchoCircleController: UIViewController {
    
    // MARK: - Enums
    enum ecentTime: Int {
        case all = 0
        case music = 1
        case dance = 2
    }
    
    // MARK: - UI Components (XIB Replacement)
    
    private let SpotlightHeaderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Street Events")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let SpotlightCategoryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let SpotlightIndicatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var visualHarmony: UICollectionView!
    var indidavereshing: UIView! // 对应 XIB 中的滑动指示条容器
    
    // MARK: - Private Properties
    
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
    
    private var chioker: ecentTime = .all
    private var BoboRoomaesun: (String, [[String: Any]]) = ("titRoom", [])
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.color = .white
        indicator.hidesWhenStopped = true
        return indicator
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSpotlightLayout()
        creativeHarmony()
        visualPerformer()
        urbanExpressionFlow()
        
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
        
        // 初始数据请求
        urbanEnergy(path: "/xstmcdoyz/vsrayjvz", dicot: [
            "artMoodFlow": VisualEcho.publicRhythm,
            "performBlend": chioker.rawValue
        ])
    }
    
    // MARK: - UI Setup (XIB Logic)
    
    private func setupSpotlightLayout() {
        self.view.backgroundColor = .black // 对应 XIB 中的 labelColor
        
        // 初始化 CollectionView
        let SpotlightLayout = UICollectionViewFlowLayout()
        visualHarmony = UICollectionView(frame: .zero, collectionViewLayout: SpotlightLayout)
        visualHarmony.translatesAutoresizingMaskIntoConstraints = false
        
        // 设置指示器引用
        indidavereshing = SpotlightIndicatorView
        
        // 构建分类按钮
        let SpotlightTitles = ["All", "Music", "Dance"]
        for (index, title) in SpotlightTitles.enumerated() {
            let SpotlightBtn = UIButton(type: .custom)
            SpotlightBtn.tag = 11 + index
            SpotlightBtn.setTitle(title, for: .normal)
            SpotlightBtn.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
            SpotlightBtn.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
            SpotlightCategoryStackView.addArrangedSubview(SpotlightBtn)
        }
        
        // 层级添加
        view.addSubview(SpotlightHeaderImageView)
        view.addSubview(SpotlightCategoryStackView)
        view.addSubview(SpotlightIndicatorView)
        view.addSubview(visualHarmony)
        
        NSLayoutConstraint.activate([
            // 顶部图片
            SpotlightHeaderImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 13),
            SpotlightHeaderImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SpotlightHeaderImageView.widthAnchor.constraint(equalToConstant: 251),
            SpotlightHeaderImageView.heightAnchor.constraint(equalToConstant: 34),
            
            // StackView
            SpotlightCategoryStackView.topAnchor.constraint(equalTo: SpotlightHeaderImageView.bottomAnchor, constant: 23),
            SpotlightCategoryStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SpotlightCategoryStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            SpotlightCategoryStackView.heightAnchor.constraint(equalToConstant: 30),
            
            // 指示器约束
            SpotlightIndicatorView.topAnchor.constraint(equalTo: SpotlightCategoryStackView.bottomAnchor, constant: 3),
            SpotlightIndicatorView.heightAnchor.constraint(equalToConstant: 3),
            SpotlightIndicatorView.widthAnchor.constraint(equalToConstant: 100),
            // 初始对齐第一个按钮
            SpotlightIndicatorView.centerXAnchor.constraint(equalTo: SpotlightCategoryStackView.subviews[0].centerXAnchor),
            
            // CollectionView 约束
            visualHarmony.topAnchor.constraint(equalTo: SpotlightIndicatorView.bottomAnchor, constant: 20),
            visualHarmony.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            visualHarmony.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            visualHarmony.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // MARK: - Actions
    
    @IBAction func visualSoul(_ sender: UIButton) {
        if sender.tag == 11 { chioker = .all }
        if sender.tag == 12 { chioker = .music }
        if sender.tag == 13 { chioker = .dance }
        
        // 动画更新指示器位置
        UIView.animate(withDuration: 0.3) {
            self.indidavereshing.center.x = sender.center.x + 10 // 保持原始逻辑中的偏移
        }
        
        urbanEnergy(path: "/xstmcdoyz/vsrayjvz", dicot: [
            "artMoodFlow": VisualEcho.publicRhythm,
            "performBlend": chioker.rawValue
        ])
    }
    
    @objc func lastoneperson() {
        urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
    
    // MARK: - Logic Methods
    
    private func creativeHarmony() {
        visualHarmony.backgroundColor = .clear
        visualHarmony.showsHorizontalScrollIndicator = false
        
        let SpotlightFlow = UICollectionViewFlowLayout()
        let SpotlightWidth = (UIScreen.main.bounds.width - 36 - 11) / 2
        SpotlightFlow.itemSize = CGSize(width: SpotlightWidth, height: 240)
        SpotlightFlow.minimumInteritemSpacing = 11
        SpotlightFlow.scrollDirection = .vertical
        visualHarmony.collectionViewLayout = SpotlightFlow
    }
    
    private func visualPerformer() {
        visualHarmony.register(EchoCircleCell.self, forCellWithReuseIdentifier: "EchoCircleCell")
    }
    
    private func urbanExpressionFlow() {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }
}

// MARK: - CollectionView Delegate & DataSource

extension EchoCircleController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        let SpotlightCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EchoCircleCell", for: indexPath) as! EchoCircleCell
       
        SpotlightCell.visualToneFlow.urbanTone(streetEcho: SpotlightData["artDream"] as? String)
        SpotlightCell.artSpiritWave.text = SpotlightData["creativeToneFlow"] as? String
        SpotlightCell.creativeJourneyFlow.urbanTone(streetEcho: SpotlightData["urbanGroove"] as? String)
        SpotlightCell.sceneMoodFlow.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        return SpotlightCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        if let SpotlightStage = SpotlightData["streetStage"] as? Int {
            urbanExpressionFlow(stageWave: AArtPerception.creativeAura, streetSoul: "\(SpotlightStage)")
        }
    }
}

// MARK: - Network Logic

extension EchoCircleController {
    private func urbanEnergy(path: String, dicot: [String: Any]) {
        artFusion.startAnimating()
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { [weak self] SpotlightResult in
            guard let self = self else { return }
            self.artFusion.stopAnimating()
            
            guard let SpotlightDict = SpotlightResult as? [String: Any],
                  let SpotlightAura = SpotlightDict[VisualEcho.centerEther("dcattpa")] as? [[String: Any]] else { return }
            
            self.BoboRoomaesun.1 = SpotlightAura
            self.visualHarmony.reloadData()
        } urbanBeat: { [weak self] _ in
            self?.artFusion.stopAnimating()
        }
    }
}
