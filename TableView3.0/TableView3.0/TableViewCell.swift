//
//  TableViewCell.swift
//  TableView3.0
//
//  Created by Arturas Zube on 11/10/19.
//  Copyright © 2019 Arturas Zube. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var imageTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleIT()
        
    }
    
    func styleIT() {
        imgImage.layer.shadowOpacity = 0.51
        imgImage.layer.shadowOffset =  CGSize.zero
        imgImage.layer.shadowColor = UIColor.darkGray.cgColor
        imgImage.layer.cornerRadius = 7
    }
    
    func setImages(foto: FotoList) {
        imgImage.image = foto.image
        imageTitleLabel.text = foto.title 
    }
    
}
