//
//  ViewController.swift
//  foodapp1
//
//  Created by Ravisha Ratnayake on 2023-02-01.
//

import UIKit


class LoginController: UIViewController {

    var LoginView: LoginView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setupView()
    }

func setupView()
    {
        let mainView = foodapp1.LoginView(frame : self.view.frame)
        self.LoginView = mainView
        self.LoginView.loginAction = loginPressed
      //  self.LoginView.signUpAction = signupPressed
        self.LoginView.signUpAction = signupPressed
        self.view.addSubview(LoginView)
        LoginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    func loginPressed() {
        let HomeViewController = HomeViewController()
        present(HomeViewController, animated: true, completion: nil)
    }
       // guard let email = LoginView.emailTextField.text else { return }
        //guard let password = LoginView.passwordTextField.text else { return }
        
        //FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) { (User, error) in
          //  if let err = error {
            //    print(err.localizedDescription)
            //} else
            //{
              //  print("User signed in")
            //}
        //}
        //func showCreateAccount()
        //{
            
        //}
    
    func signupPressed() {
        let signUpController = SignUpController()
        present(signUpController, animated: true, completion: nil)
    }
    
    
}


