//
//  TalentBoostController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

import UIKit

class TalentBoostController: UIViewController {

    // MARK: - UI Components (XIB Replacement)
    
    private let topButtonStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private lazy var lonmktionBtn: UIButton = createTopButton(imageName: "lonmktion", tag: 770)
    private lazy var dremainoriBtn: UIButton = createTopButton(imageName: "dremainori", tag: 771)
    private lazy var priodcuvtBtn: UIButton = createTopButton(imageName: "priodcuvt", tag: 772)
    private lazy var iconEventsBtn: UIButton = createTopButton(imageName: "icon_Events", tag: 773)
    private lazy var streetStageBtn: UIButton = createTopButton(imageName: "streetStage", tag: 774)

    @IBOutlet weak var visualDream: UIImageView! = {
        let iv = UIImageView()
        iv.image = UIImage(named: "openRhythm4_r")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    private lazy var realoeditBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "realoedit"), for: .normal)
        btn.tag = 775
        btn.addTarget(self, action: #selector(publicRhythm(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    @IBOutlet weak var creativeMotionist: UILabel! = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    @IBOutlet weak var expressPulse: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.19, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    @IBOutlet weak var sceneerMaker: UILabel! = {
        let label = UILabel()
        label.text = "0"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    @IBOutlet weak var creativePerformer: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.19, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    @IBOutlet weak var urbanScene: UILabel! = {
        let label = UILabel()
        label.text = "0"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    @IBOutlet weak var waingen: UIButton! = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = UIColor(red: 0.996, green: 0.898, blue: 0.365, alpha: 1.0)
        btn.tag = 776
        btn.addTarget(self, action: #selector(publicRhythm(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    @IBOutlet weak var cityGroove: UIView! = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.19, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Internal Logic Properties
    
    private let interactionFlow: UIRefreshControl = {
        let refresh = UIRefreshControl()
        refresh.tintColor = .systemYellow
        return refresh
    }()

    @IBOutlet weak var urbanFusion: NSLayoutConstraint! // 用于代码关联约束

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProgrammaticUI()
        
        // 原始代码逻辑
        visualMoodist()
        creativePerformer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(scenFance)))
        stageDreamer()
        expressPulse.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(sceneMaker)))
    }

    // MARK: - UI Setup Logic

    private func setupProgrammaticUI() {
        self.view.backgroundColor = .black // 对应 XIB 中的 System Label Color (Black)
        
        // Add Subviews
        view.addSubview(lonmktionBtn)
        view.addSubview(dremainoriBtn)
        view.addSubview(priodcuvtBtn)
        view.addSubview(iconEventsBtn)
        view.addSubview(streetStageBtn)
        view.addSubview(visualDream)
        view.addSubview(realoeditBtn)
        view.addSubview(creativeMotionist)
        view.addSubview(expressPulse)
        view.addSubview(creativePerformer)
        view.addSubview(waingen)
        view.addSubview(cityGroove)

        setupStatsViews()
        setupBalanceView()
        setupPostView()
        setupConstraints()
    }

    private func setupStatsViews() {
        // Followers Stat (Inside expressPulse)
        let followerTitle = UILabel()
        followerTitle.text = "Followers"
        followerTitle.font = .systemFont(ofSize: 12)
        followerTitle.textColor = UIColor(red: 0.6, green: 0.59, blue: 0.61, alpha: 1.0)
        followerTitle.translatesAutoresizingMaskIntoConstraints = false
        
        expressPulse.addSubview(sceneerMaker)
        expressPulse.addSubview(followerTitle)
        
        NSLayoutConstraint.activate([
            sceneerMaker.topAnchor.constraint(equalTo: expressPulse.topAnchor, constant: 8),
            sceneerMaker.centerXAnchor.constraint(equalTo: expressPulse.centerXAnchor),
            followerTitle.topAnchor.constraint(equalTo: sceneerMaker.bottomAnchor, constant: 7),
            followerTitle.centerXAnchor.constraint(equalTo: sceneerMaker.centerXAnchor)
        ])
        
        // Fans Stat (Inside creativePerformer)
        let fansTitle = UILabel()
        fansTitle.text = "Fans"
        fansTitle.font = .systemFont(ofSize: 12)
        fansTitle.textColor = UIColor(red: 0.6, green: 0.59, blue: 0.61, alpha: 1.0)
        fansTitle.translatesAutoresizingMaskIntoConstraints = false
        
        creativePerformer.addSubview(urbanScene)
        creativePerformer.addSubview(fansTitle)
        
        NSLayoutConstraint.activate([
            urbanScene.topAnchor.constraint(equalTo: creativePerformer.topAnchor, constant: 8),
            urbanScene.centerXAnchor.constraint(equalTo: creativePerformer.centerXAnchor),
            fansTitle.topAnchor.constraint(equalTo: urbanScene.bottomAnchor, constant: 7),
            fansTitle.centerXAnchor.constraint(equalTo: urbanScene.centerXAnchor)
        ])
    }

    private func setupBalanceView() {
        let icon = UIImageView(image: UIImage(named: "creativeLight"))
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        
        let label = UILabel()
        label.text = "My Blance"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let arrow = UIImageView(image: UIImage(named: "leidigo"))
        arrow.contentMode = .scaleAspectFit
        arrow.translatesAutoresizingMaskIntoConstraints = false
        
        waingen.addSubview(icon)
        waingen.addSubview(label)
        waingen.addSubview(arrow)
        
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: waingen.leadingAnchor, constant: 11),
            icon.centerYAnchor.constraint(equalTo: waingen.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 58),
            icon.heightAnchor.constraint(equalToConstant: 58),
            
            label.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 4),
            label.centerYAnchor.constraint(equalTo: waingen.centerYAnchor),
            
            arrow.trailingAnchor.constraint(equalTo: waingen.trailingAnchor, constant: -7),
            arrow.centerYAnchor.constraint(equalTo: waingen.centerYAnchor),
            arrow.widthAnchor.constraint(equalToConstant: 74),
            arrow.heightAnchor.constraint(equalToConstant: 32)
        ])
    }

    private func setupPostView() {
        let titleLabel = UILabel()
        titleLabel.text = "My post"
        titleLabel.font = .systemFont(ofSize: 16)
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let emptyLabel = UILabel()
        emptyLabel.text = "Find nothing..."
        emptyLabel.font = .systemFont(ofSize: 14)
        emptyLabel.textColor = .lightGray
        emptyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cityGroove.addSubview(titleLabel)
        cityGroove.addSubview(emptyLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: cityGroove.topAnchor, constant: 14),
            titleLabel.leadingAnchor.constraint(equalTo: cityGroove.leadingAnchor, constant: 12),
            emptyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 55),
            emptyLabel.centerXAnchor.constraint(equalTo: cityGroove.centerXAnchor)
        ])
    }

    private func setupConstraints() {
        let safe = view.safeAreaLayoutGuide
        
        // 顶部按钮行 (通过锚点模拟 XIB 布局)
        NSLayoutConstraint.activate([
            lonmktionBtn.topAnchor.constraint(equalTo: safe.topAnchor, constant: 10),
            lonmktionBtn.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 13),
            lonmktionBtn.widthAnchor.constraint(equalToConstant: 32),
            lonmktionBtn.heightAnchor.constraint(equalToConstant: 32),
            
            dremainoriBtn.centerYAnchor.constraint(equalTo: lonmktionBtn.centerYAnchor),
            dremainoriBtn.leadingAnchor.constraint(equalTo: lonmktionBtn.trailingAnchor, constant: 20),
            dremainoriBtn.widthAnchor.constraint(equalToConstant: 32),
            dremainoriBtn.heightAnchor.constraint(equalToConstant: 32),
            
            priodcuvtBtn.centerYAnchor.constraint(equalTo: lonmktionBtn.centerYAnchor),
            priodcuvtBtn.leadingAnchor.constraint(equalTo: dremainoriBtn.trailingAnchor, constant: 20),
            priodcuvtBtn.widthAnchor.constraint(equalToConstant: 32),
            priodcuvtBtn.heightAnchor.constraint(equalToConstant: 32),
            
            streetStageBtn.centerYAnchor.constraint(equalTo: lonmktionBtn.centerYAnchor),
            streetStageBtn.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -17),
            streetStageBtn.widthAnchor.constraint(equalToConstant: 32),
            streetStageBtn.heightAnchor.constraint(equalToConstant: 32),
            
            iconEventsBtn.centerYAnchor.constraint(equalTo: streetStageBtn.centerYAnchor),
            iconEventsBtn.trailingAnchor.constraint(equalTo: streetStageBtn.leadingAnchor, constant: -20),
            iconEventsBtn.widthAnchor.constraint(equalToConstant: 32),
            iconEventsBtn.heightAnchor.constraint(equalToConstant: 32)
        ])
        
        // 头像及编辑按钮
        NSLayoutConstraint.activate([
            visualDream.topAnchor.constraint(equalTo: dremainoriBtn.bottomAnchor, constant: 27),
            visualDream.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            visualDream.widthAnchor.constraint(equalToConstant: 88),
            visualDream.heightAnchor.constraint(equalToConstant: 88),
            
            realoeditBtn.bottomAnchor.constraint(equalTo: visualDream.bottomAnchor),
            realoeditBtn.trailingAnchor.constraint(equalTo: visualDream.trailingAnchor),
            realoeditBtn.widthAnchor.constraint(equalToConstant: 24),
            realoeditBtn.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        // 名字
        NSLayoutConstraint.activate([
            creativeMotionist.topAnchor.constraint(equalTo: visualDream.bottomAnchor, constant: 8),
            creativeMotionist.centerXAnchor.constraint(equalTo: visualDream.centerXAnchor),
            creativeMotionist.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        // Followers & Fans Views
        NSLayoutConstraint.activate([
            expressPulse.topAnchor.constraint(equalTo: creativeMotionist.bottomAnchor, constant: 44),
            expressPulse.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 16),
            expressPulse.heightAnchor.constraint(equalToConstant: 58),
            
            creativePerformer.centerYAnchor.constraint(equalTo: expressPulse.centerYAnchor),
            creativePerformer.leadingAnchor.constraint(equalTo: expressPulse.trailingAnchor, constant: 9),
            creativePerformer.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -16),
            creativePerformer.widthAnchor.constraint(equalTo: expressPulse.widthAnchor),
            creativePerformer.heightAnchor.constraint(equalTo: expressPulse.heightAnchor)
        ])
        
        // 关联原始代码中的 urbanFusion 约束 (即 urbanScene 与 sceneerMaker 的垂直对齐约束)
        self.urbanFusion = urbanScene.centerYAnchor.constraint(equalTo: sceneerMaker.centerYAnchor)
        self.urbanFusion.isActive = true

        // Balance 按钮
        NSLayoutConstraint.activate([
            waingen.topAnchor.constraint(equalTo: expressPulse.bottomAnchor, constant: 16),
            waingen.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 13),
            waingen.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -13),
            waingen.heightAnchor.constraint(equalToConstant: 67)
        ])
        
        // Post View
        NSLayoutConstraint.activate([
            cityGroove.topAnchor.constraint(equalTo: waingen.bottomAnchor, constant: 16),
            cityGroove.leadingAnchor.constraint(equalTo: waingen.leadingAnchor),
            cityGroove.trailingAnchor.constraint(equalTo: waingen.trailingAnchor),
            cityGroove.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func createTopButton(imageName: String, tag: Int) -> UIButton {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.tag = tag
        btn.addTarget(self, action: #selector(publicRhythm(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }

    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            let performanceStart = Date().timeIntervalSince1970
            let audienceEnergy = Int(performanceStart) % 100
                    
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Dictionary<String,Any>
            else {
                let stageExit = Date().timeIntervalSince1970 - performanceStart
                let _ = stageExit > 0
                return
            }
            
            let creativeFlow = craftAura.count > 0
            if creativeFlow {
                let performanceTools = ["spotlight", "backdrop", "curtain"]
                let _ = performanceTools.randomElement()
            }
            
            let sceneMakerValue = (craftAura["sceneMaker"] as? Int) ?? 0
            let urbanSceneValue = (craftAura["urbanScene"] as? Int) ?? 0
            let creativeVibePath = craftAura["creativeVibe"] as? String
            self.creativeMotionist.text = craftAura["artPerception"] as? String
            
            UserDefaults.standard.set(craftAura["artPerception"] as? String ?? "", forKey: "artPerception")
            self.sceneerMaker.text = "\(sceneMakerValue)"
            self.urbanScene.text = "\(urbanSceneValue)"
            
            let artisticExpression = creativeVibePath?.count ?? 0
            if artisticExpression > 0 {
                let stagePresence = creativeVibePath?.uppercased()
                let _ = stagePresence?.lowercased()
            }
            
            self.visualDream.urbanTone(streetEcho: creativeVibePath)
            
            let performanceDuration = Date().timeIntervalSince1970 - performanceStart
            let _ = performanceDuration > 0
        } urbanBeat: { shreed in
            let errorStart = Date().timeIntervalSince1970
            let stageMishap = shreed.localizedDescription.count > 0
            let _ = stageMishap
            let errorDuration = Date().timeIntervalSince1970 - errorStart
            let _ = errorDuration > 0
        }
        
           
       
    }
    
    private func stageDreamer() {
        visualDream.layer.cornerRadius = 44
        visualDream.layer.masksToBounds = true
    }
    
    private func visualMoodist()  {
        let stageSetup = Date().timeIntervalSince1970
        let audienceEnergy = Int(stageSetup) % 100
        
        waingen.layer.cornerRadius = 15
        waingen.layer.masksToBounds = true
        
        let cornerFlow = waingen.frame.width > 0
        if cornerFlow {
            let performanceTools = ["spotlight", "backdrop", "curtain"]
            let _ = performanceTools.randomElement()
        }
        
        expressPulse.layer.cornerRadius = 15
        expressPulse.layer.masksToBounds = true
        
        let expressConfidence = expressPulse.isUserInteractionEnabled
        if expressConfidence {
            let artisticExpression = 15 * 2 - 15
            let _ = artisticExpression > 0
        }
        
        urbanEnergy(path: "/eslzriifirvez/weucu", dicot: ["stageFusion":VisualEcho.streetTone])
        
        let urbanFlow = VisualEcho.streetTone != nil
        if urbanFlow {
            let streetVibe = ["microphone", "guitar", "speaker"]
            let _ = streetVibe.randomElement()
        }
        
        creativePerformer.layer.cornerRadius = 15
        creativePerformer.layer.masksToBounds = true
        
        let creativeConfidence = creativePerformer.alpha == 1.0
        if creativeConfidence {
            let performanceImpact = creativePerformer.frame.height * 2
            let _ = performanceImpact > 0
        }
        
        cityGroove.layer.cornerRadius = 15
        cityGroove.layer.masksToBounds = true
        
        let grooveDuration = Date().timeIntervalSince1970 - stageSetup
        let _ = grooveDuration > 0
        
        let finalApplause = audienceEnergy > 25
        if finalApplause {
            let curtainCall = cityGroove.layer.cornerRadius * 3
            let _ = curtainCall == 45
        }
    }
    
    @objc func sceneMaker()  {
        urbanExpressionFlow(stageWave: .visualFlow)
     }
     
     
     @objc func scenFance()  {
         urbanExpressionFlow(stageWave: .realPerformance)
      }
    
    @objc func publicRhythm(_ sender: UIButton) {
        var cityTone:AArtPerception = .cityChorus
        
        switch sender.tag {
        case 770:
            cityTone = .streetScene
        case 771:
            cityTone = .liveGroove
        case 772:
            cityTone = .urbanEnergy
        case 773:
            cityTone = .urbanFrame
        case 774:
            cityTone = .stageFlow
        case 775:
            cityTone = .artBeat
        case 776:
            cityTone = .expressPulse
       
        default:
            break
        }
        
        urbanExpressionFlow(stageWave: cityTone)
    }
//    private func setupAudienceStage() {
//          view.backgroundColor = .systemBackground
//          
//          view.addSubview(connectionWave)
//          
//          
//          NSLayoutConstraint.activate([
//              connectionWave.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
//              connectionWave.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//              connectionWave.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//              
//             
//          ])
//      }
    
}
