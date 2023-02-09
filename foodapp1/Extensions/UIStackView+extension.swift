//
//  UIStackView+extension.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-04.
//

import UIKit

extension UIView {
    func createStackView(views:[UIView]) -> UIStackView
    {
        let stackview = UIStackView(arrangedSubviews: views)
        stackview.axis = .vertical
        stackview.distribution = .fillProportionally
        stackview.spacing = 10
        return stackview
    }
    
    
    
}
