//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Maria Mamina on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let userName = self.userName else { return }
        welcomeLabel.text = "Welcome, \(userName)!"
    }
}
