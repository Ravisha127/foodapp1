//
//  HomeViewController.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-05.
//

import UIKit

class HomeViewController: UIViewController {

    
    var tableView = UITableView()
    var food: [Food] = []
    
    struct Cells
    {
        static let foodTableViewCell = "FoodTableViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Menu"
        configureTableView()
        food = fetchData()
        // Do any additional setup after loading the view.
    }
    
func configureTableView()
    {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(FoodTableViewCell.self, forCellReuseIdentifier: Cells.foodTableViewCell)
        tableView.pin(to: view)
    }
    
func setTableViewDelegates()
    {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.foodTableViewCell) as! FoodTableViewCell
        let food = food[indexPath.row]
        cell.set(food: food)
        
        
        return cell
    }
}

extension HomeViewController{
    func fetchData() -> [Food] {
        
        let image1 = Food(images: Images.f1, title: "Spaghetti Carbonara")
        let image2 = Food(images: Images.f2, title: "Pizza")
        let image3 = Food(images: Images.f3, title: "Burger")
        let image4 = Food(images: Images.f4, title: "Beef Stew")
        let image5 = Food(images: Images.f5, title: "Kottu")
        let image6 = Food(images: Images.f6, title: "Spaghetti Bolognese")
        let image7 = Food(images: Images.f7, title: "Cottage Pie")
        let image8 = Food(images: Images.f8, title: "Shephard's Pie")
        let image9 = Food(images: Images.f9, title: "Lasagna")
        let image10 = Food(images: Images.f10, title: "Greek Salad")
        return [image1,image2,image3,image4,image5,image6,image7,image8,image9,image10]
    }
}
