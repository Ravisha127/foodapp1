//
//  FoodTableViewCell.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-05.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    var foodImageView = UIImageView()
    var foodTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(foodImageView)
        addSubview(foodTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(food : Food)
    {
        foodImageView.image = food.images
        foodTitleLabel.text = food.title
    }
    
    func configureImageView()
    {
        foodImageView.layer.cornerRadius = 10
        foodImageView.clipsToBounds = true
    }
    
    func configureTitleLabel()
    {
        foodTitleLabel.numberOfLines = 0
        foodTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints()
    {
        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        foodImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        foodImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant:12).isActive = true
        foodImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        foodImageView.widthAnchor.constraint(equalTo: foodImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
 
    func setTitleLabelConstraints()
    {
        foodTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        foodTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        foodTitleLabel.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 20).isActive = true
        foodTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        foodTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}
