//
//  BeerCardViewController.swift
//  BestBeers
//
//  Created by Di on 13.07.2021.
//

import UIKit

class BeerCardViewController: UITableViewController {
    
    @IBOutlet weak var bottleImgLabel: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var abvLabel: UILabel!
    @IBOutlet weak var ibuLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var beer:Beer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        brandLabel.text = beer?.brand.capitalized
        nameLabel.text = beer?.name
        abvLabel.text = beer?.abv
        ibuLabel.text = beer?.ibu
        ratingLabel.text = beer?.rating
        
        tableView.allowsSelection = false

        
        
        if nameLabel?.text == "Lviv Tripel" {
            bottleImgLabel.image = #imageLiteral(resourceName: "pravdaBottle")
        } else if nameLabel?.text == "На молоці" {
            bottleImgLabel.image = #imageLiteral(resourceName: "cupaBottle")
        } else if nameLabel?.text == "Golden Ale" {
            bottleImgLabel.image = #imageLiteral(resourceName: "varvarBottle")
        } else if nameLabel?.text == "Eastman" {
            bottleImgLabel.image = #imageLiteral(resourceName: "underwoodBottle")
        } else if nameLabel?.text == "Stout I" {
            bottleImgLabel.image = #imageLiteral(resourceName: "movaBottle")
        } else if nameLabel?.text == "Titanic Stout" {
            bottleImgLabel.image = #imageLiteral(resourceName: "titanicBottle")
        } else if nameLabel?.text == "Punk IPA" {
            bottleImgLabel.image = #imageLiteral(resourceName: "brewdogBottle")
        } else if nameLabel?.text == "Trappist Tripel" {
            bottleImgLabel.image = #imageLiteral(resourceName: "westmalleBottle")
        } else if nameLabel?.text == "Go To" {
            bottleImgLabel.image = #imageLiteral(resourceName: "stoneBottle")
        } else if nameLabel?.text == "Hitachino Nest" {
            bottleImgLabel.image = #imageLiteral(resourceName: "kiuchiBottle")
        } else if nameLabel?.text == "Konrad's Stout" {
            bottleImgLabel.image = #imageLiteral(resourceName: "lervigBottle")
        } else if nameLabel?.text == "The Truth" {
            bottleImgLabel.image = #imageLiteral(resourceName: "flyingdogBottle")
        }
        
        
    }
    
    @IBAction func buyButton(_ sender: UIButton) {
        
        if nameLabel?.text == "Lviv Tripel" {
            UIApplication.shared.open(URL(string: "https://www.pravda.beer/shop/lviv-tripel/")!)
        } else if nameLabel?.text == "На молоці" {
            UIApplication.shared.open(URL(string: "https://goodwine.com.ua/tsypa-na-molotsi-80473.html")!)
        } else if nameLabel?.text == "Golden Ale" {
            UIApplication.shared.open(URL(string: "https://goodwine.com.ua/pyvo-golden-ale-74783.html")!)
        } else if nameLabel?.text == "Eastman" {
            UIApplication.shared.open(URL(string: "https://beerfreak.org/underwood-brewery-eastman-asian-gose/")!)
        } else if nameLabel?.text == "Stout I" {
            UIApplication.shared.open(URL(string: "https://varus.zakaz.ua/ru/products/04820210270156/pivo-mova-330ml/")!)
        } else if nameLabel?.text == "Titanic Stout" {
            UIApplication.shared.open(URL(string: "https://goodwine.com.ua/titanic-stout-15996.html")!)
        } else if nameLabel?.text == "Punk IPA" {
            UIApplication.shared.open(URL(string: "https://goodwine.com.ua/brewdog-punk-ipa-15639.html")!)
        } else if nameLabel?.text == "Trappist Tripel" {
            UIApplication.shared.open(URL(string: "https://goodwine.com.ua/westmalle-tripel-41868.html")!)
        } else if nameLabel?.text == "Go To" {
            UIApplication.shared.open(URL(string: "https://winestyle.com.ua/products/Stone-Go-To-IPA-in-can.html")!)
        } else if nameLabel?.text == "Hitachino Nest" {
            UIApplication.shared.open(URL(string: "https://winestyle.com.ua/products/Hitachino-Nest-Yuzu-Lager-in-can.html")!)
        } else if nameLabel?.text == "Konrad's Stout" {
            UIApplication.shared.open(URL(string: "https://winestyle.com.ua/products/Lervig-Konrad-s-Stout-in-can.html")!)
        } else if nameLabel?.text == "The Truth" {
            UIApplication.shared.open(URL(string: "https://goodwine.com.ua/the-truth-imperial-ipa-25142.html")!)
        }
        
    }
    
    
    
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 6
//
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
//        cell.selectionStyle = UITableViewCell.SelectionStyle.none
//
//
//
//        return cell
//    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
