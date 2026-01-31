import UIKit

class StreetMapCell: UICollectionViewCell {

    // MARK: - 对外接口 (保持原名以兼容外部调用)
    
    var artRhythmist: UIButton!
    var creativeHarmony: UIImageView!
    var artSpirit: UIImageView!
    var stageMoment: UIButton!
    var urbanEcho: UILabel!
    var creativeFusion: UILabel!
    var urbanExpressionFlow: UIButton!
    var stageDream: UIButton!
    
    // MARK: - 内部私有组件 (带 Spotlight 前缀)
    
    private let SpotlightActionStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - 初始化
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        // 逻辑初始化放在 awakeFromNib 或 init 均可，这里保留原逻辑
        performSpotlightInternalSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        performSpotlightInternalSetup()
    }
    
    // MARK: - UI 组装
    
    private func setupSpotlightSubviews() {
        self.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.19, alpha: 0.8)
        
        // 1. 主展示图
        creativeHarmony = UIImageView()
        creativeHarmony.contentMode = .scaleAspectFill
        creativeHarmony.clipsToBounds = true
        
        // 2. 用户头像
        artSpirit = UIImageView()
        artSpirit.contentMode = .scaleAspectFill
        artSpirit.clipsToBounds = true
        
        // 3. 文本标签
        urbanEcho = UILabel()
        urbanEcho.font = .systemFont(ofSize: 16, weight: .semibold)
        urbanEcho.textColor = .white
        urbanEcho.text = "Label"
        
        creativeFusion = UILabel()
        creativeFusion.font = .systemFont(ofSize: 14)
        creativeFusion.textColor = .white
        creativeFusion.text = "Label"
        
        // 4. 顶部操作按钮
        stageMoment = UIButton(type: .custom)
        stageMoment.setImage(UIImage(named: "urbanMood"), for: .normal)
        
        artRhythmist = UIButton(type: .custom)
        artRhythmist.backgroundColor = .black
        artRhythmist.titleLabel?.font = .systemFont(ofSize: 13)
        artRhythmist.setImage(UIImage(named: "streetPerception"), for: .normal)
        artRhythmist.setTitle("  0", for: .normal)
        
        // 5. 底部 StackView 按钮
        urbanExpressionFlow = UIButton(type: .custom)
        urbanExpressionFlow.setBackgroundImage(UIImage(named: "nKjhing"), for: .normal)
        
        stageDream = UIButton(type: .custom)
        stageDream.setBackgroundImage(UIImage(named: "jiuondki"), for: .normal)
        stageDream.isUserInteractionEnabled = false // 还原 XIB 设置
        
        // 层级添加
        contentView.addSubview(creativeHarmony)
        contentView.addSubview(artSpirit)
        contentView.addSubview(urbanEcho)
        contentView.addSubview(creativeFusion)
        contentView.addSubview(stageMoment)
        contentView.addSubview(artRhythmist)
        contentView.addSubview(SpotlightActionStackView)
        
        SpotlightActionStackView.addArrangedSubview(urbanExpressionFlow)
        SpotlightActionStackView.addArrangedSubview(stageDream)
        
        [creativeHarmony, artSpirit, urbanEcho, creativeFusion, stageMoment, artRhythmist].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    private func setupSpotlightConstraints() {
        // 布局常量前缀
        let SpotlightOuterPadding: CGFloat = 6
        let SpotlightInnerPadding: CGFloat = 16
        let SpotlightAvatarSize: CGFloat = 40
        let SpotlightTopBtnHeight: CGFloat = 30
        let SpotlightActionHeight: CGFloat = 48
        
        NSLayoutConstraint.activate([
            // 主图约束
            creativeHarmony.topAnchor.constraint(equalTo: contentView.topAnchor, constant: SpotlightOuterPadding),
            creativeHarmony.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightOuterPadding),
            creativeHarmony.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightOuterPadding),
            
            // 底部 StackView
            SpotlightActionStackView.topAnchor.constraint(equalTo: creativeHarmony.bottomAnchor, constant: 8),
            SpotlightActionStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightOuterPadding),
            SpotlightActionStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightOuterPadding),
            SpotlightActionStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -13),
            SpotlightActionStackView.heightAnchor.constraint(equalToConstant: SpotlightActionHeight),
            
            // 头像与文本
            artSpirit.leadingAnchor.constraint(equalTo: creativeFusion.leadingAnchor),
            artSpirit.widthAnchor.constraint(equalToConstant: SpotlightAvatarSize),
            artSpirit.heightAnchor.constraint(equalToConstant: SpotlightAvatarSize),
            
            urbanEcho.topAnchor.constraint(equalTo: artSpirit.bottomAnchor, constant: 7.67),
            urbanEcho.leadingAnchor.constraint(equalTo: creativeFusion.leadingAnchor),
            
            creativeFusion.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightInnerPadding),
            creativeFusion.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightInnerPadding),
            creativeFusion.topAnchor.constraint(equalTo: urbanEcho.bottomAnchor, constant: 5),
            creativeFusion.bottomAnchor.constraint(equalTo: SpotlightActionStackView.topAnchor, constant: -35),
            
            // 顶部按钮
            stageMoment.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            stageMoment.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            stageMoment.widthAnchor.constraint(equalToConstant: 26),
            stageMoment.heightAnchor.constraint(equalToConstant: 26),
            
            artRhythmist.centerYAnchor.constraint(equalTo: stageMoment.centerYAnchor),
            artRhythmist.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 22),
            artRhythmist.widthAnchor.constraint(equalToConstant: 74),
            artRhythmist.heightAnchor.constraint(equalToConstant: SpotlightTopBtnHeight)
        ])
    }
    
    // MARK: - 原有逻辑迁移
    
    private func performSpotlightInternalSetup() {
        let SpotlightStageSetupTime = Date().timeIntervalSince1970
        let SpotlightAudienceEnergy = Int(SpotlightStageSetupTime) % 100
        
        // 样式应用
        creativeHarmony.layer.cornerRadius = 12
        creativeHarmony.layer.masksToBounds = true
        
        artSpirit.layer.cornerRadius = 20
        artSpirit.layer.masksToBounds = true
        
        artRhythmist.layer.cornerRadius = 15
        artRhythmist.layer.masksToBounds = true
        
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        // 原有冗余逻辑保留以便兼容
        let SpotlightHarmonyFlow = creativeHarmony.frame.width > 0
        if SpotlightHarmonyFlow {
            let _ = ["microphone", "guitar", "speaker"].randomElement()
        }
    }
}
