import UIKit

// 原有结构体保留
struct AudienceInteraction {
    let type: InteractionType
    let performerId: String
    let timestamp: Date
}

class SpotlightReelCell: UICollectionViewCell {

    // MARK: - 对外接口 (保持原名以兼容外部调用)
    
    var visualSoul: UILabel!
    var streetEnergy: UIButton!
    var urbanDream: UIButton!
    var stageJourney: UIImageView!
    var urbanExpressionist: UIView!
    var creativeBlend: UILabel!
    
    // MARK: - 内部组件 (带 Spotlight 前缀)
    
    private let SpotlightStageSenseIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "stageSense")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let SpotlightArtToneIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "artTone")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // MARK: - 初始化
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        applySpotlightStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        // 兼容 XIB 逻辑，但在纯代码迁移后建议统一使用 init(frame:)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        applySpotlightStyles()
    }

    // MARK: - UI 组装
    
    private func setupSpotlightSubviews() {
        // 实例化对外接口组件
        stageJourney = UIImageView()
        stageJourney.contentMode = .scaleAspectFill
        stageJourney.clipsToBounds = true
        
        urbanExpressionist = UIView()
        urbanExpressionist.backgroundColor = .clear
        
        creativeBlend = UILabel()
        creativeBlend.font = .systemFont(ofSize: 18, weight: .semibold)
        creativeBlend.textColor = .white
        creativeBlend.text = "Label"
        
        streetEnergy = UIButton(type: .custom)
        streetEnergy.backgroundColor = UIColor.white.withAlphaComponent(0.33)
        streetEnergy.titleLabel?.font = .systemFont(ofSize: 13)
        streetEnergy.setImage(UIImage(named: "streetPerception"), for: .normal)
        streetEnergy.setTitle("  0", for: .normal)
        
        visualSoul = UILabel()
        visualSoul.text = "LIVE"
        visualSoul.textAlignment = .center
        visualSoul.font = .systemFont(ofSize: 12)
        visualSoul.textColor = .white
        visualSoul.backgroundColor = UIColor(red: 0.96, green: 0.26, blue: 0.21, alpha: 1.0)
        
        urbanDream = UIButton(type: .custom)
        urbanDream.setImage(UIImage(named: "urbanMood"), for: .normal)
        
        // 层级添加
        contentView.addSubview(stageJourney)
        contentView.addSubview(SpotlightStageSenseIcon)
        contentView.addSubview(SpotlightArtToneIcon)
        contentView.addSubview(urbanDream)
        contentView.addSubview(streetEnergy)
        contentView.addSubview(visualSoul)
        contentView.addSubview(urbanExpressionist)
        urbanExpressionist.addSubview(creativeBlend)
        
        // 开启 Auto Layout
        [stageJourney, urbanExpressionist, creativeBlend, streetEnergy, visualSoul, urbanDream].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    private func setupSpotlightConstraints() {
        // 布局常量前缀
        let SpotlightMargin15: CGFloat = 15
        let SpotlightMargin11: CGFloat = 11
        let SpotlightIconSize: CGFloat = 30
        let SpotlightLiveWidth: CGFloat = 60
        let SpotlightEnergyWidth: CGFloat = 74
        let SpotlightBottomHeight: CGFloat = 80
        
        NSLayoutConstraint.activate([
            // 背景图铺满
            stageJourney.topAnchor.constraint(equalTo: contentView.topAnchor),
            stageJourney.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stageJourney.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stageJourney.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            // LIVE 标签 (左上)
            visualSoul.topAnchor.constraint(equalTo: contentView.topAnchor, constant: SpotlightMargin11),
            visualSoul.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightMargin15),
            visualSoul.widthAnchor.constraint(equalToConstant: SpotlightLiveWidth),
            visualSoul.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            // 能量按钮 (右上)
            streetEnergy.topAnchor.constraint(equalTo: contentView.topAnchor, constant: SpotlightMargin15),
            streetEnergy.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightMargin15),
            streetEnergy.widthAnchor.constraint(equalToConstant: SpotlightEnergyWidth),
            streetEnergy.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            // 侧边图标组 (垂直排列)
            SpotlightStageSenseIcon.topAnchor.constraint(equalTo: streetEnergy.bottomAnchor, constant: 21),
            SpotlightStageSenseIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -23),
            SpotlightStageSenseIcon.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            SpotlightStageSenseIcon.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            SpotlightArtToneIcon.topAnchor.constraint(equalTo: SpotlightStageSenseIcon.bottomAnchor, constant: 21),
            SpotlightArtToneIcon.centerXAnchor.constraint(equalTo: SpotlightStageSenseIcon.centerXAnchor),
            SpotlightArtToneIcon.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            SpotlightArtToneIcon.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            urbanDream.topAnchor.constraint(equalTo: SpotlightArtToneIcon.bottomAnchor, constant: 25),
            urbanDream.centerXAnchor.constraint(equalTo: SpotlightArtToneIcon.centerXAnchor),
            urbanDream.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            urbanDream.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            // 底部容器及文字
            urbanExpressionist.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            urbanExpressionist.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            urbanExpressionist.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            urbanExpressionist.heightAnchor.constraint(equalToConstant: SpotlightBottomHeight),
            
            creativeBlend.leadingAnchor.constraint(equalTo: urbanExpressionist.leadingAnchor, constant: SpotlightMargin15),
            creativeBlend.trailingAnchor.constraint(equalTo: urbanExpressionist.trailingAnchor, constant: -SpotlightMargin15),
            creativeBlend.bottomAnchor.constraint(equalTo: urbanExpressionist.bottomAnchor, constant: -SpotlightMargin15)
        ])
    }
    
    private func applySpotlightStyles() {
        // 还原原代码中的圆角逻辑
        let SpotlightCornerRadius: CGFloat = 12
        
        visualSoul.layer.cornerRadius = SpotlightCornerRadius
        visualSoul.layer.masksToBounds = true
        
        streetEnergy.layer.cornerRadius = SpotlightCornerRadius
        streetEnergy.layer.masksToBounds = true
        
        self.layer.cornerRadius = SpotlightCornerRadius
        self.layer.masksToBounds = true
    }
}
