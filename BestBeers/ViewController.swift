//
//  ViewController.swift
//  BestBeers
//
//  Created by Di on 13.07.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var beers = [Beer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cupa = Beer(brand: "cupa", name: "На молоці", abv: "7.5%", ibu: "40", rating: "3.86")
        beers.append(cupa)
        let varvar = Beer(brand: "varvar", name: "Golden Ale", abv: "6.9%", ibu: "25", rating: "3.69")
        beers.append(varvar)
        let pravda = Beer(brand: "pravda", name: "Lviv Tripel", abv: "7.5$", ibu: "27", rating: "3.6")
        beers.append(pravda)
        let underwood = Beer (brand: "underwood", name: "Eastman", abv: "4.8%", ibu: "20", rating: "3.75")
        beers.append(underwood)
        let mova = Beer (brand: "mova", name: "Stout I", abv: "5.7%", ibu: "23", rating:"3.85")
        beers.append(mova)
        let titanic = Beer (brand: "titanic", name: "Titanic Stout", abv: "4.5%", ibu: "23", rating:"3.58")
        beers.append(titanic)
        let brewDog = Beer (brand: "brew Dog", name: "Punk IPA", abv: "5.6%", ibu: "35", rating:"3.74")
        beers.append(brewDog)
        let westmalle = Beer (brand: "westmalle", name: "Trappist Tripel", abv: "9.5%", ibu: "36", rating:"3.83")
        beers.append(westmalle)
        let stone = Beer (brand: "stone", name: "Go To", abv: "4.7%", ibu: "65", rating:"3.68")
        beers.append(stone)
        let kiuchi = Beer (brand: "kiuchi", name: "Hitachino Nest", abv: "5.5%", ibu: "17", rating:"3.73")
        beers.append(kiuchi)
        let lervig = Beer (brand: "lervig", name: "Konrad's Stout", abv: "10.4%", ibu: "70", rating:"3.88")
        beers.append(lervig)
        let flyingDog = Beer (brand: "flying Dog", name: "The Truth", abv: "8.7%", ibu: "80", rating:"3.83")
        beers.append(flyingDog)


        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = beers[indexPath.row].brand.capitalized
        cell?.imageView?.image = UIImage(named: beers[indexPath.row].brand)
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BeerCardViewController {
            destination.beer = beers[tableView.indexPathForSelectedRow!.row]
            
        }
    }
}

