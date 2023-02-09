//
//  ViewDetails.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-09.
//

import UIKit

class ViewDetails : UIViewController

{
    
    var lblName:UILabel?
    var lblDescription:UITextField?
    
    let image = UIImage(named: "img1" )
    var imageView : UIImageView!
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
         lblName = UILabel()
         lblName?.frame = CGRect.init(x:130, y:50, width: 200, height: 45)
         lblName?.text = "Spaghetti carbonara"
         lblName?.textAlignment = .left
         lblName?.textColor = .black
         lblName?.backgroundColor = .white
         self.view.backgroundColor = .white
         view.addSubview(lblName!)
         
         lblDescription = UITextField()
         lblDescription?.frame = CGRect.init(x:100, y:300, width: 200, height: 105)
         lblDescription?.text = "Spaghetti has 221 calories for 1 cup (140 grams) of cooked spaghetti with no added salt, fat, or toppings. The calories are 80% carbs, 15% protein, and 5% fat."
         lblDescription?.textAlignment = .left
         lblDescription?.textColor = .black
         lblDescription?.backgroundColor = .white
         self.view.backgroundColor = .white
         view.addSubview(lblDescription!)
        
         
         imageView = UIImageView(frame:  CGRect (x: 70, y:100, width : 300, height: 200))
         imageView.contentMode = .scaleAspectFit
         imageView.image = image
         view.addSubview(imageView)
         
         
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
