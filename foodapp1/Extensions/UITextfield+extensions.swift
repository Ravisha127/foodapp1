//
//  UITextfield+extensions.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-04.
//

import UIKit

extension UITextField {
    
    public convenience init(placeHolder: String){
    self.init()
    self.borderStyle = .none
    self.layer.cornerRadius = 5
    self.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
    self.textColor = UIColor(white: 0.9, alpha: 0.8)
    self.font = UIFont.systemFont(ofSize: 17)
    self.autocorrectionType = .no
    //placeholder
        let placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: placeHolder,attributes: [NSAttributedString.Key.font :UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor(white: 1, alpha: 0.7)]))
    self.attributedPlaceholder = placeholder
    self.setAnchor(width: 0, height: 100)
    self.setLeftPaddingPoints(space: 20)
}
}
