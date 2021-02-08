//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Maria Mamina on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userInfo = self.userInfo else { return }
        welcomeLabel.text = "Welcome,\n\(userInfo.person.name)"
    }
}
