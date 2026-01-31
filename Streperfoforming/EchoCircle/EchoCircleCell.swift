import UIKit

class EchoCircleCell: UICollectionViewCell {
    
    // MARK: - 对外接口 (保持原名以兼容外部调用)
    
    var visualToneFlow: UIImageView!
    var creativeJourneyFlow: UIImageView!
    var artSpiritWave: UILabel!
    var sceneMoodFlow: UIButton!
    var performExpression: UILabel!
    var streetVibration: UIButton!
    
    // MARK: - 内部私有组件 (带 Spotlight 前缀)
    
    private let SpotlightBottomGradientOverlay: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "creativeBeat")
        imageView.contentMode = .scaleToFill
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
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        applySpotlightStyles()
    }
    
    // MARK: - UI 组装
    
    private func setupSpotlightSubviews() {
        // 1. 背景主图
        visualToneFlow = UIImageView()
        visualToneFlow.contentMode = .scaleAspectFill
        visualToneFlow.backgroundColor = UIColor(red: 0.996, green: 0.898, blue: 0.365, alpha: 1.0)
        
        // 2. 底部装饰图 (从 XIB 迁移)
        // 使用提供的 SpotlightBottomGradientOverlay
        
        // 3. 标题文字
        artSpiritWave = UILabel()
        artSpiritWave.font = .systemFont(ofSize: 16, weight: .semibold)
        artSpiritWave.textColor = .white
        artSpiritWave.text = "Label"
        
        // 4. "Join" 标签
        performExpression = UILabel()
        performExpression.text = "Join"
        performExpression.textAlignment = .center
        performExpression.font = .systemFont(ofSize: 14, weight: .semibold)
        performExpression.textColor = .black
        performExpression.backgroundColor = UIColor(red: 0.976, green: 0.976, blue: 0.114, alpha: 1.0)
        
        // 5. 小图标流
        creativeJourneyFlow = UIImageView()
        creativeJourneyFlow.contentMode = .scaleAspectFill
        creativeJourneyFlow.clipsToBounds = true
        creativeJourneyFlow.layer.cornerRadius = 11
        // 6. 顶部按钮 (sceneMoodFlow & streetVibration 在 XIB 中指向同一个对象)
        let SpotlightActionBtn = UIButton(type: .custom)
        SpotlightActionBtn.setImage(UIImage(named: "urbanMood"), for: .normal)
        sceneMoodFlow = SpotlightActionBtn
        streetVibration = SpotlightActionBtn
        
        // 层级添加
        contentView.addSubview(visualToneFlow)
        contentView.addSubview(SpotlightBottomGradientOverlay)
        contentView.addSubview(artSpiritWave)
        contentView.addSubview(performExpression)
        contentView.addSubview(creativeJourneyFlow)
        contentView.addSubview(SpotlightActionBtn)
        
        // 开启 Auto Layout
        [visualToneFlow, artSpiritWave, performExpression, creativeJourneyFlow, SpotlightActionBtn].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupSpotlightConstraints() {
        // 布局常量
        let SpotlightJoinWidth: CGFloat = 63
        let SpotlightJoinHeight: CGFloat = 28
        let SpotlightIconSize: CGFloat = 22
        let SpotlightActionBtnSize: CGFloat = 26
        let SpotlightGradientHeight: CGFloat = 100
        
        NSLayoutConstraint.activate([
            // 背景铺满
            visualToneFlow.topAnchor.constraint(equalTo: contentView.topAnchor),
            visualToneFlow.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            visualToneFlow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            visualToneFlow.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            // 底部装饰图
            SpotlightBottomGradientOverlay.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            SpotlightBottomGradientOverlay.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            SpotlightBottomGradientOverlay.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            SpotlightBottomGradientOverlay.heightAnchor.constraint(equalToConstant: SpotlightGradientHeight),
            
            // 标题文字 (距离底部 41pt)
            artSpiritWave.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            artSpiritWave.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            artSpiritWave.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -41),
            
            // Join 标签 (右下角)
            performExpression.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            performExpression.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -9),
            performExpression.widthAnchor.constraint(equalToConstant: SpotlightJoinWidth),
            performExpression.heightAnchor.constraint(equalToConstant: SpotlightJoinHeight),
            
            // 左下角小图标
            creativeJourneyFlow.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 9),
            creativeJourneyFlow.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -9),
            creativeJourneyFlow.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            creativeJourneyFlow.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            // 右上角动作按钮
            sceneMoodFlow.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            sceneMoodFlow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            sceneMoodFlow.widthAnchor.constraint(equalToConstant: SpotlightActionBtnSize),
            sceneMoodFlow.heightAnchor.constraint(equalToConstant: SpotlightActionBtnSize)
        ])
    }
    
    private func applySpotlightStyles() {
        // 还原 awakeFromNib 中的逻辑
        performExpression.layer.cornerRadius = 15
        performExpression.layer.masksToBounds = true
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
