//
//  UIcolor+extension.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-04.
//

import UIKit

extension UIColor {
    
    public convenience init (r: CGFloat, g: CGFloat, b: CGFloat)
    {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static var greenBorderColor: UIColor = {
        return UIColor(r: 80, g: 227, b: 194)
        
    }()
    
    static var redBorderColor: UIColor = {
        return UIColor(r: 255, g: 151, b: 164)
        
    }()
    
    
}
