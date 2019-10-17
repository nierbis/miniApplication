//
//  DetailViewController.swift
//  TableView3.0
//
//  Created by Arturas Zube on 11/10/19.
//  Copyright © 2019 Arturas Zube. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageViewExposed: UIImageView!
    @IBOutlet weak var imageTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    var picture: FotoList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        imageStyling()
        navigationItem.largeTitleDisplayMode = .never
        labelColor()
        
        
    }
    
 
    
    func setupUI() {
        imageViewExposed.image = picture?.image
        imageTitleLabel.text = picture?.title
        descriptionLabel.text = picture?.description
        
    }
    
    func imageStyling() {

        imageViewExposed.layer.shadowOpacity = 1
        imageViewExposed.layer.shadowOffset =  CGSize.zero
        imageViewExposed.layer.shadowColor = UIColor.darkGray.cgColor
        
        imageViewExposed.layer.cornerRadius = 7
        
        viewMoreButton2.layer.borderColor = UIColor.black.cgColor
        viewMoreButton2.backgroundColor = .red
        viewMoreButton2.layer.cornerRadius = 10
    }
    
    @IBOutlet weak var viewMoreButton2: UIButton!
    
    @IBAction func viewMoreButton(_ sender: Any) {
        let alert = UIAlertController(title: "We're so sorry.", message: "Currently 'view more' function is under maintenance.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
     //   alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
        
    }
    func labelColor() {
        imageTitleLabel.textColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
    }
    
    

}



