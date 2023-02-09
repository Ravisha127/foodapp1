//
//  UIButton+extensions.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-04.
//

import UIKit

extension UIButton {
    public convenience init(title : String, borderColor : UIColor){
    self.init()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        self.setAttributedTitle(attributedString, for: .normal)
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = borderColor.cgColor
        self.setAnchor(width: 0, height: 50)
    }
}
