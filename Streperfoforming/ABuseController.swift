//
//  ABuseController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/14.
//

import UIKit

class ABuseController:  UITabBarController, UITabBarControllerDelegate {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tabBar.layer.cornerRadius = 16
        self.tabBar.layer.masksToBounds = true
        self.tabBar.frame = CGRect.init(x: 22, y:UIScreen.main.bounds.height - 65 - 25 , width: UIScreen.main.bounds.width - 44, height: 65)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupTabBarAppearance()
        setupViewControllers()

    }

    private func setupViewControllers() {
        // Feeds：街头表演短视频与互动
        let feedsVC = CreatorStudioController()
       
        feedsVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm0") ,selectedImage: UIImage.init(named: "openRhythm0_r"))

        // Explore：发现新表演者和热门内容
        let exploreVC = EchoCircleController()
        
        exploreVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm1") ,selectedImage: UIImage.init(named: "openRhythm1_r"))

        // Center placeholder for “Stage”发布
        let stagePlaceholderVC = UIViewController()
        stagePlaceholderVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm2_r") ,selectedImage: UIImage.init(named: "openRhythm2_r"))
        stagePlaceholderVC.tabBarItem.tag = 2

        // Chat：评论、私聊和实时互动
        let chatVC = StreetMapController()
       
        chatVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm3") ,selectedImage: UIImage.init(named: "openRhythm3_r"))

        // Profile：个人主页与创作者管理
        let profileVC = TalentBoostController()
        
        profileVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm4") ,selectedImage: UIImage.init(named: "openRhythm4_r"))

        self.viewControllers = [feedsVC, exploreVC, stagePlaceholderVC, chatVC, profileVC]
    }

    @objc private func presentStageController() {
        let stageVC = SpotlightReelController()
       
        let nav = UINavigationController(rootViewController: stageVC)
        nav.navigationBar.isHidden = true
        self.present(nav, animated: true, completion: nil)
    }

    // 禁止点击中间占位 tab，直接弹出 Stage
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 2 {
            presentStageController()
            return false
        }
        return true
    }
    
    private func setupTabBarAppearance() {
            // 设置背景颜色
        
        tabBar.backgroundColor = UIColor(red: 0.22, green: 0.22, blue: 0.2, alpha: 1)
            
        tabBar.barTintColor = UIColor(red: 0.22, green: 0.22, blue: 0.2, alpha: 1)

        tabBar.layer.cornerRadius = 20
        tabBar.layer.masksToBounds = true
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        // 圆角仅顶部
        }
}
