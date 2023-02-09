//
//  SignUpController.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-04.
//

import UIKit
import FirebaseAuth



class SignUpController : UIViewController {
    
    var signUpView: SignUpView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
    }
    
    func setupViews() {
        let signUpView = SignUpView(frame: self.view.frame)
        self.signUpView = signUpView
       self.signUpView.cancelAction = cancelPressed
       self.signUpView.submitAction = submitPressed
        
        view.addSubview(signUpView)
        
    }
   func submitPressed()
    {
        guard let email = signUpView.emailTextField.text else { return }
        guard let password = signUpView.passwordTextField.text else { return }
       // guard let name = signUpView.nameTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { (result,err) in
           if let err = err {
            print(err.localizedDescription)
        } else  {
            guard let uid = result?.user.uid else { return}
            //self.defaults.set(false, forkey: "user logged in")
            print("succesfully created user")
            self.dismiss(animated: true, completion: nil)
        
        }
    }
    }

    func cancelPressed()
    {
        dismiss(animated: true, completion: nil)
    }


}
    
