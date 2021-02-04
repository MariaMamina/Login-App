//
//  LoginViewController.swift
//  Login App
//
//  Created by Maria Mamina on 03.02.2021.
//

import UIKit

class User {var name: String
            var password: String
    
    init (name: String, password: String) {
        self.name = name
        self.password = password
    }
}

let newUser = User(name: "User", password: "Password")


class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
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
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTextField.text
    }
    
    @IBAction func logInButtonPressed() {
        if userNameTextField.text == newUser.name && passwordTextField.text == newUser.password {
        performSegue(withIdentifier: "goToWelcome", sender: nil)
        } else {
            showAlert(with: "Invalid login or password", and: "Please, enter corect login or password")
        }
    }
    
    @IBAction func forgotUserName() {
        showAlert(with: "Oops!", and: "Your name is \(newUser.name) 😉")
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

