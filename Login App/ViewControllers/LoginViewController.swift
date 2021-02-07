//
//  LoginViewController.swift
//  Login App
//
//  Created by Maria Mamina on 03.02.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let newUser = myInfo
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else {
            return
        }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userInfo = newUser
            } else if let contactInfoVC = viewController as? ContactInformationViewController {
                contactInfoVC.userInfo = newUser
            } else if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.userInfo = newUser
            }
        }
     }
    
    @IBAction func logInButtonPressed() {
        if userNameTextField.text == newUser.userName && passwordTextField.text == newUser.password {
        performSegue(withIdentifier: "goToWelcome", sender: nil)
        } else {
            showAlert(with: "Invalid login or password", and: "Please, enter corect login or password")
        }
    }
    
    @IBAction func forgotUserName() {
        showAlert(with: "Oops!", and: "Your name is \(newUser.userName) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(newUser.password) 😉")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
    
    private func showAlert(with title: String, and message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}

