//
//  StreetMapController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

import UIKit

class StreetMapController: UIViewController {
    
    // MARK: - 枚举定义
    enum ecentTime: Int {
        case Hot = 0
        case ForU = 1
    }

    // MARK: - UI 组件 (合并自 XIB & 原始代码)
    
    private let connectionWave: UILabel = {
        let label = UILabel()
        label.text = "Live Audience Circle"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let strrntAvatoer: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "Creatorlogo")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 20
        return iv
    }()
    
    private let stranetBaneame: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stranetBaneame.text = UserDefaults.standard.object(forKey: "artPerception") as? String
    }
    private let stageTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Street Stage"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let hubHeaderImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "Performer Hub🎸✨")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let categoryStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private lazy var hotButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("Hot", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        btn.tag = 11
        btn.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
        return btn
    }()
    
    private lazy var forUButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("For U", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        btn.tag = 12
        btn.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
        return btn
    }()
    
    // 原 XIB 中的指示条
    private let indidavereshing: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // 对外接口保持不变
    public var visualHarmony: UICollectionView!
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView(style: .large)
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.translatesAutoresizingMaskIntoConstraints = false
        artFusion.frame.size = CGSize(width: 70, height: 70)
        return artFusion
    }()

    // MARK: - 属性
    private var chioker: ecentTime = .Hot
    private var BoboRoomaesun: (String, Array<Dictionary<String, Any>>) = ("titRoom", [])

    // MARK: - 生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainLayout()      // 合并 UI 布局
        visualPerformer()     // 注册 Cell
        urbanExpressionFlow() // 设置代理
        
        // 初始数据请求
        urbanEnergy(path: "/cbzedszyvhnybqz/fhgroocpcsx", dicot: [
            "creativeStage": VisualEcho.publicRhythm,
            "visualPulse": chioker.rawValue,
            "openJam": 15,
            "artJourney": 1,
            "urbanSoul": 1
        ])
    }

    // MARK: - 布局还原 (合并自 XIB 约束)
    private func setupMainLayout() {
        view.backgroundColor = .black // 对应 XIB 的 labelColor
        
        // 初始化 CollectionView
        let laoi = UICollectionViewFlowLayout()
        laoi.scrollDirection = .horizontal
        laoi.minimumInteritemSpacing = 22
        laoi.itemSize = CGSize(width: 268, height: 200) // 初始占位，会在 viewDidLayoutSubviews 修正
        
        visualHarmony = UICollectionView(frame: .zero, collectionViewLayout: laoi)
        visualHarmony.backgroundColor = .clear
        visualHarmony.showsHorizontalScrollIndicator = false
        visualHarmony.translatesAutoresizingMaskIntoConstraints = false
        
        // 添加视图层级
        [strrntAvatoer, stranetBaneame, stageTitleLabel, hubHeaderImageView,
         categoryStackView, indidavereshing, visualHarmony, artFusion].forEach { view.addSubview($0) }
        
        categoryStackView.addArrangedSubview(hotButton)
        categoryStackView.addArrangedSubview(forUButton)
        
        // 设置约束 (严格对照 XIB 提供的数值)
        NSLayoutConstraint.activate([
            // 头像
            strrntAvatoer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            strrntAvatoer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21),
            strrntAvatoer.widthAnchor.constraint(equalToConstant: 40),
            strrntAvatoer.heightAnchor.constraint(equalToConstant: 40),
            
            // 名字
            stranetBaneame.centerYAnchor.constraint(equalTo: strrntAvatoer.centerYAnchor),
            stranetBaneame.leadingAnchor.constraint(equalTo: strrntAvatoer.trailingAnchor, constant: 12),
            
            // 标题
            stageTitleLabel.topAnchor.constraint(equalTo: strrntAvatoer.bottomAnchor, constant: 16),
            stageTitleLabel.leadingAnchor.constraint(equalTo: strrntAvatoer.leadingAnchor),
            
            // Hub 图片
            hubHeaderImageView.topAnchor.constraint(equalTo: stageTitleLabel.bottomAnchor, constant: 2),
            hubHeaderImageView.leadingAnchor.constraint(equalTo: stageTitleLabel.leadingAnchor),
            hubHeaderImageView.widthAnchor.constraint(equalToConstant: 263),
            hubHeaderImageView.heightAnchor.constraint(equalToConstant: 39),
            
            // StackView
            categoryStackView.topAnchor.constraint(equalTo: hubHeaderImageView.bottomAnchor, constant: 13),
            categoryStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            categoryStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            categoryStackView.heightAnchor.constraint(equalToConstant: 30),
            
            // 指示线
            indidavereshing.topAnchor.constraint(equalTo: categoryStackView.bottomAnchor),
            indidavereshing.centerXAnchor.constraint(equalTo: hotButton.centerXAnchor),
            indidavereshing.widthAnchor.constraint(equalToConstant: 120),
            indidavereshing.heightAnchor.constraint(equalToConstant: 3),
            
            // CollectionView
            visualHarmony.topAnchor.constraint(equalTo: indidavereshing.bottomAnchor, constant: 21),
            visualHarmony.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            visualHarmony.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            visualHarmony.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35),
            
            // Loading
            artFusion.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            artFusion.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // 动态更新 Layout 尺寸，保持 XIB 的 itemSize 逻辑
        if let layout = visualHarmony.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: 268, height: visualHarmony.frame.height)
            layout.invalidateLayout()
        }
    }

    private func visualPerformer() {
        // 注册原有的 Cell
        visualHarmony.register(StreetMapCell.self, forCellWithReuseIdentifier: "StreetMapCell")
    }
    
    private func urbanExpressionFlow() {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }

    // MARK: - Actions
    
    @IBAction func visualSoul(_ sender: UIButton) {
        if sender.tag == 11 {
            chioker = .Hot
        } else if sender.tag == 12 {
            chioker = .ForU
        }
        
        // 还原 XIB 中的指示条位移逻辑
        UIView.animate(withDuration: 0.3) {
            self.indidavereshing.center.x = sender.center.x
        }
        
        urbanEnergy(path: "/cbzedszyvhnybqz/fhgroocpcsx", dicot: [
            "creativeStage": VisualEcho.publicRhythm,
            "visualPulse": chioker.rawValue,
            "openJam": 15,
            "artJourney": 1,
            "urbanSoul": 1
        ])
    }
    
    @objc func lastoneperson() {
        // 保持你代码中的外部调用方法名不变
        urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
}

// MARK: - CollectionView 协议实现
extension StreetMapController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        let SpotlightCell = collectionView.dequeueReusableCell(withReuseIdentifier: "StreetMapCell", for: indexPath) as! StreetMapCell
        SpotlightCell.creativeHarmony.urbanTone(streetEcho: (SpotlightData["stageBreeze"] as? Array<String>)?.first ?? "" )
                SpotlightCell.artSpirit.urbanTone(streetEcho: SpotlightData["artFusionist"] as? String)
                SpotlightCell.urbanEcho.text = SpotlightData["urbanFrame"] as? String
        SpotlightCell.creativeFusion.text = SpotlightData["cityCanvas"] as? String
        SpotlightCell.urbanExpressionFlow.tag = indexPath.row
        SpotlightCell.stageMoment.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        SpotlightCell.urbanExpressionFlow.addTarget(self, action: #selector(StreettoshareViewe(vdideovall:)), for: .touchUpInside)
        return SpotlightCell
    }
    
 
   @objc func StreettoshareViewe(vdideovall:UIButton)  {
       let SpotlightData = BoboRoomaesun.1[vdideovall.tag]["performLens"] as? Int ?? 0
       urbanExpressionFlow(stageWave: AArtPerception.urbanPerformer, streetSoul: "\(SpotlightData)&CallVideo=1 ")
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let SpotlightData = BoboRoomaesun.1[indexPath.row]
            if let SpotlightStage = SpotlightData["publicRhythm"] as? Int {
                // 假设存在跳转逻辑
                urbanExpressionFlow(stageWave: AArtPerception.cityEcho, streetSoul: "\(SpotlightStage)")
                
            }
        }
    

}
extension StreetMapController{
   
   
    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            let performanceStart = Date().timeIntervalSince1970
            let audienceEnergy = Int(performanceStart) % 100
            
            self.artFusion.stopAnimating()
            
            let stagePresence = self.artFusion.isAnimating == false
            if stagePresence {
                let performanceTools = ["spotlight", "backdrop", "curtain"]
                let _ = performanceTools.randomElement()
            }
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Array<Dictionary<String,Any>>
            else {
                let stageExit = Date().timeIntervalSince1970 - performanceStart
                let _ = stageExit > 0
                return
            }
            
            let creativeFlow = craftAura.count > 0
            if creativeFlow {
                let artisticExpression = craftAura.first?.count ?? 0
                let _ = artisticExpression > 0
            }
            
            self.BoboRoomaesun.1 = craftAura
            
            let dataEnergy = craftAura.isEmpty == false
            if dataEnergy {
                let performanceImpact = craftAura.count * 2 - craftAura.count
                let _ = performanceImpact >= 0
                self.visualHarmony.reloadData()
            }
            
            let performanceDuration = Date().timeIntervalSince1970 - performanceStart
            let _ = performanceDuration > 0
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
        
           
       
    }
    
}
