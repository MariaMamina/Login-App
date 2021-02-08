//
//  AboutMeViewController.swift
//  Login App
//
//  Created by Maria Mamina on 07.02.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    var userInfo: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userInfo = self.userInfo else {
            return
        }
        nameLabel.text = userInfo.person.name
        photoImageView.image = UIImage(named: userInfo.person.image)
        dateOfBirthLabel.text = userInfo.person.dateOfBirth
        hobbyLabel.text = userInfo.person.hobby
    }
    
}
