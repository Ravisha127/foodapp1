//
//  SignUpView.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-04.
//

import UIKit
import Firebase

class SignUpView: UIView
{
    
    
    var cancelAction: (() ->Void)?
    var submitAction: (() ->Void)?
    
    let backgroundImageView: UIImageView =
    {
        let iv = UIImageView()
        iv.image = UIImage(named: "bg5")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField(placeHolder: "Name")
        return tf
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    
    let passwordTextField : UITextField = {
        let tf = UITextField(placeHolder: "Password")
        return tf
    }()
    
    let confirmPasswordTextField : UITextField = {
        let tf = UITextField(placeHolder: "Confirm Password")
        return tf
    }()
    
    let submitButton : UIButton = {
        let button = UIButton(title: "Submit", borderColor: .greenBorderColor)
        button.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return button
    }()
    
    let cancelButton : UIButton = {
        let button = UIButton(title: "Cancel", borderColor: .redBorderColor)
        button.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        return button
    }()
    
    @objc func handleCancel(){
        cancelAction?()
    }
    
    @objc func handleSubmit(){
        submitAction?()
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setUpViews()
    }
    
    func setUpViews()
    {
        let stackView = createStackView(views: [nameTextField, emailTextField, passwordTextField, confirmPasswordTextField, submitButton, cancelButton])
        self.addSubview(backgroundImageView)
        addSubview(stackView)
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        stackView.setAnchor(width: self.frame.width - 60, height: 310)
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
   
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not beem implemented")
    }
}
