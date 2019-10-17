//
//  ImgViewController.swift
//  TableView3.0
//
//  Created by Arturas Zube on 11/10/19.
//  Copyright © 2019 Arturas Zube. All rights reserved.
//

import UIKit

class ImgViewController: UIViewController {
    
    var foto: [FotoList] = []

    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foto = createArray()
        setupNavBar()
        
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
//        let searchController = UISearchController(searchResultsController: nil)
//        navigationItem.searchController = searchController
//        navigationItem.hidesSearchBarWhenScrolling = true
    }
    
        
    func createArray() -> [FotoList] {
        var tempImages: [FotoList] = []
        
        let image1 = FotoList(image: #imageLiteral(resourceName: "1"), title: "Laptop and Iphone", description: "Everyones loved and liked phone")
        let image2 = FotoList(image: #imageLiteral(resourceName: "img6"), title: "Road in New Zealand", description: "Single road, single travelers and amazing views")
        let image3 = FotoList(image: #imageLiteral(resourceName: "3"), title: "Workspace setup", description: "my iOS programing workspace")
        let image4 = FotoList(image: #imageLiteral(resourceName: "2"), title: "Apple HQ", description: "Just a place where magic happens")
        let image5 = FotoList(image: #imageLiteral(resourceName: "img7"), title: "She and NZ in a background", description: "Our beloved trip and she captured in astonished view")
        let image6 = FotoList(image: #imageLiteral(resourceName: "img8"), title: "Me and NZ in a background", description: "Me, myself and I")
        let image7 = FotoList(image: #imageLiteral(resourceName: "img4"), title: "Rice terraces in Bali", description: "Rices, rices and one more time rices")
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        tempImages.append(image4)
        tempImages.append(image5)
        tempImages.append(image6)
        tempImages.append(image7)
        
        return tempImages
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MasterToDetail" {
            let destVC = segue.destination as! DetailViewController
            destVC.picture = sender as? FotoList
            
            
        }
    }
    
}

extension ImgViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foto.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let fotoes = foto[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell") as! TableViewCell
        

        cell.setImages(foto: fotoes)
        
        return cell
    }
    // Funkcija , kai paspaudi/ pasirenki row yra perjungiamas su indetifier "MasterToDetail"
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //sukuriamas var , kuris turi foto array ir index path yra buten kuri is array nuspaudus.
          let fotoes = foto[indexPath.row]
        
        // sender yra variable virsui
        performSegue(withIdentifier: "MasterToDetail", sender: fotoes)
        
    }
}

