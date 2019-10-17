//
//  WelcomeController.swift
//  TableView3.0
//
//  Created by Arturas Zube on 16/10/19.
//  Copyright © 2019 Arturas Zube. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    
    @IBOutlet weak var WelcomeButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonStyle()
    
    }
    
    func buttonStyle() {
        WelcomeButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        WelcomeButton.layer.cornerRadius = 25.0
        WelcomeButton.tintColor = UIColor.white
    }
    
}
