//
//  FoodViewController.swift
//  Haochi
//
//  Created by lily on 12/9/15.
//  Copyright © 2015 Seab Jackson. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var foods:[ Food] = [Food(name: "Burgers", image: "burgers"),
                Food(name: "Rice", image: "Asian"),
                Food(name: "Steaks", image: "Steak"),
                Food(name: "Sandwiches", image: "sandwiches"),
                Food(name: "Pizzas", image: "pizzas"),
                Food(name: "Icy Desserts", image: "Icy Desserts"),
                Food(name: "Pitas", image: "Pita"),
                Food(name: "Sushi", image: "Sushi"),
                Food(name: "Korean", image: "Korean"),
                Food(name: "Dumplings", image: "Dumplings"),
                Food(name: "Fried Chicken", image: "Fried Chicken"),
                Food(name: "Mexican", image: "Mexican"),
                Food(name: "Ramen", image: "Ramen"),
                Food(name: "Salads", image: "Salads"),
                Food(name: "BBQ", image: "BBQ") ]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // change content inset to see first rows of table view
        tableView.contentInset = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension FoodViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
        return .TopAttached
    }
}

extension FoodViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
}

extension FoodViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FoodCategory", forIndexPath: indexPath) as!  FoodTableViewCell
        let food = foods[indexPath.row]
        
        cell.foodImage.image  =  UIImage(named: food.image)
        cell.foodNameLabel.text = food.name
       
        return cell
    }
}

