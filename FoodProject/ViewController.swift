//
//  ViewController.swift
//  FoodProject
//
//  Created by mohamed on 4/13/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableview:UITableView!
    let food = ["burger","pasta","pizza","salad","sandwich"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self

        // Do any additional setup after loading the view, typically from a nib.
    }

    
}
extension ViewController : UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return food.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellList", for: indexPath) as! FoodViewClass
            cell.MyImage.image = UIImage(named: food[indexPath.row])
            cell.MyLable.text = food[indexPath.row]
            return cell
        }

}
extension ViewController :UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("i cando more than this")
    }
}
