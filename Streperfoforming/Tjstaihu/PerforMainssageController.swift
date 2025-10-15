//
//  PerforMainssageController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/15.
//

import UIKit

class PerforMainssageController: UIViewController {

    @IBOutlet weak var qudao: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        qudao.layer.cornerRadius = 20
        qudao.layer.masksToBounds = true
        
    }

    @IBAction func yeuiabn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
   
}


