//
//  CampaignsContriller.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class CampaignsContriller: UIViewController {
    private var creativeStage:Bool = false
    
    private let specialtyLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    @IBOutlet weak var cityRhythm: UITextField!
    
    private let stageNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    @IBOutlet weak var urbanJourney: UITextField!
    
    @IBOutlet weak var cityGroove: UILabel!
    private let avatarLabel: UILabel = {
           let label = UILabel()
           label.font = .systemFont(ofSize: 24)
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
       
      
    
    @IBOutlet weak var visualMoment: UILabel!
    private func setupHeaderStage() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(avatarLabel)
        self.view.addSubview(stageNameLabel)
        self.view.addSubview(specialtyLabel)
        
        NSLayoutConstraint.activate([
            avatarLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            avatarLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            stageNameLabel.leadingAnchor.constraint(equalTo: avatarLabel.trailingAnchor, constant: 12),
            stageNameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            
            specialtyLabel.leadingAnchor.constraint(equalTo: avatarLabel.trailingAnchor, constant: 12),
            specialtyLabel.topAnchor.constraint(equalTo: stageNameLabel.bottomAnchor, constant: 4)
        ])
        
    }
        
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView.init()
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.frame.size = CGSize.init(width: 70, height: 70)
        return artFusion
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        artMood()
        cityRhythm.borderStyle = .roundedRect
        urbanJourney.borderStyle = .roundedRect
        cityRhythm.attributedPlaceholder = NSAttributedString(string: VisualEcho.centerEther("Ewnvtueirl fpxatsbsmwaonrrd"), attributes: [NSAttributedString.Key.foregroundColor :UIColor.white,
                                                                                                  NSAttributedString.Key.font :UIFont.systemFont(ofSize: 16, weight: .semibold)                                  ])
        
        
        
        artFusion.center = self.view.center
        configureWithPerformer( StreetPerformer.init(id: "345", stageName: "stageName", avatar: "stageName", specialty: "stageName"))
        self.view.addSubview(artFusion)
       
    }

    func configureWithPerformer(_ performer: StreetPerformer) {
        avatarLabel.text = performer.avatar
        stageNameLabel.text = performer.stageName
        specialtyLabel.text = performer.specialty
        
    }
    @IBAction func artPerformerLite(_ sender: UIButton) {
        if creativeStage == false {
            urbanExpressionist(VisualEcho.centerEther("Pnlsebanspeb zrkevazdj yaanodw eaigerpecee ntnoj ktmhyek humsoegrc ftaesrqmesr xapnqda cahgrruevepmeegnhtn eoafs rtlhhey tawplpu ifyigrpsst"))
            return
        }
        guard let liveJourney = cityRhythm.text, !liveJourney.isEmpty,
                      
                let creativeStagecraft = urbanJourney.text, !creativeStagecraft.isEmpty else {
            urbanExpressionist(VisualEcho.centerEther("Pxlwemaxszeh xfjidlbli hiang zyaoeuerg mauclcrowunnytf magngdy rplajsisrwwosrnda ifliargsst"))
                    return
                }
       

               
                performLogin(email: liveJourney, password: creativeStagecraft)
    }
    
    private func urbanExpressionist(_ message: String) {
            let alert = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    
    @IBAction func visualEnergy(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        creativeStage = sender.isSelected
        
    }
    
    private func artMood()  {
        cityGroove.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cocoache(taop:))))
        urbanJourney.attributedPlaceholder = NSAttributedString(string: VisualEcho.centerEther("Ernituenrb aejmtahiol"), attributes: [NSAttributedString.Key.foregroundColor :UIColor.white,
                                                                                                  NSAttributedString.Key.font :UIFont.systemFont(ofSize: 16, weight: .semibold)                                  ])
        visualMoment.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cocoache(taop:))))
    }
    
    
    @objc func cocoache(taop:UITapGestureRecognizer)  {
        if let view = taop.view {
            let taop = view.tag
            if taop == 20 {
                let gebui = AArtPerception.streetVibe
                self.present(PerformMomentController.init(stageWave: gebui,urbanJourneyer:true), animated: true)
            }
            
            if taop == 50 {
                let gebui = AArtPerception.publicRhythm
                self.present(PerformMomentController.init(stageWave: gebui,urbanJourneyer:true), animated: true)
            }
            
        }
    }
    private let momentImageView: UIImageView = {
           let imageView = UIImageView()
           imageView.contentMode = .scaleAspectFill
       
           return imageView
      
    }()
    
    func configureWithStreetMoment(_ moment: StreetMoment) {
       
        if let imageName = moment.mediaURL {
            momentImageView.image = UIImage(named: imageName)
        }
        
        for (emoji, count) in moment.audienceReactions.prefix(3) {
            let reactionLabel = UILabel()
            reactionLabel.text = "\(emoji) \(count)"
            reactionLabel.font = .systemFont(ofSize: 14)
           
        }
        
    }
    private func performLogin(email: String, password: String) {
        momentImageView.clipsToBounds = true
        momentImageView.layer.cornerRadius = 8
        
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: "/jltgwjmkignvdz/fyuggrlekml", creativeMoment: ["artChorus":VisualEcho.publicRhythm,
                            "liveSpirit":email,
                             "creativeMood":password]) { nkill in
            
            self.momentImageView.backgroundColor = .systemGray5
            self.artFusion.stopAnimating()
            self.momentImageView.translatesAutoresizingMaskIntoConstraints = false
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? [String: Any]
            else {
                self.urbanExpressionist(VisualEcho.centerEther("Apcnchoauqnitd ioart eptavsrskwaoyrkdl yearcrmoyr"))
                let timestampLabel = UILabel()
                       
                timestampLabel.font = .systemFont(ofSize: 14, weight: .regular)
                timestampLabel.textColor = .systemGray
                timestampLabel.translatesAutoresizingMaskIntoConstraints = false
                return
            }
            let reactionStackView = UIStackView()
                   
           
            
            VisualEcho.sceneEnergy = craftAura["sceneAura"] as? String
            reactionStackView.axis = .horizontal
           
            VisualEcho.streetTone = craftAura["artMood"] as? Int
            reactionStackView.spacing = 8
            
            let gnb = UINavigationController.init(rootViewController: ABuseController.init())
            reactionStackView.translatesAutoresizingMaskIntoConstraints = false
            gnb.navigationBar.isHidden = true
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = gnb
            
        } urbanBeat: { shreed in
            self.setupStageCell(dev: shreed.localizedDescription)
           
        }
        
       
       
    }
    private func setupStageCell(dev:String) {
        self.artFusion.stopAnimating()
        self.urbanExpressionist(dev)
    }
}
