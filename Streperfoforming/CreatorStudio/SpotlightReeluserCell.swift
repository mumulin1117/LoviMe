//
//  SpotlightReeluserCell.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class SpotlightReeluserCell: UICollectionViewCell {
    
    // MARK: - UI Components
    
    /// 对外接口保持不变：头像图片
    let creativeTone: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 32 // 原代码逻辑：64/2
        return imageView
    }()
    
    /// 对外接口保持不变：城市/标题文字
    let cityTone: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 13)
        label.textColor = UIColor.white.withAlphaComponent(0.7)
        return label
    }()
    
    /// 对应 Xib 中的 "soguie" 图标
    private let badgeIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "soguie")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupUI() {
        contentView.addSubview(creativeTone)
        contentView.addSubview(cityTone)
        contentView.addSubview(badgeIcon)
        
        // 开启自动布局
        creativeTone.translatesAutoresizingMaskIntoConstraints = false
        cityTone.translatesAutoresizingMaskIntoConstraints = false
        badgeIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // 1. 头像约束 (W:64, H:64, Top:0, CenterX)
            creativeTone.topAnchor.constraint(equalTo: contentView.topAnchor),
            creativeTone.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            creativeTone.widthAnchor.constraint(equalToConstant: 64),
            creativeTone.heightAnchor.constraint(equalToConstant: 64),
            
            // 2. 文字约束 (Top: 头像底部+5, CenterX)
            cityTone.topAnchor.constraint(equalTo: creativeTone.bottomAnchor, constant: 5),
            cityTone.centerXAnchor.constraint(equalTo: creativeTone.centerXAnchor),
            
            // 3. 角标约束 (Bottom & Trailing 紧贴头像右下角, W/H: 24)
            badgeIcon.bottomAnchor.constraint(equalTo: creativeTone.bottomAnchor),
            badgeIcon.trailingAnchor.constraint(equalTo: creativeTone.trailingAnchor),
            badgeIcon.widthAnchor.constraint(equalToConstant: 24),
            badgeIcon.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
  
}
