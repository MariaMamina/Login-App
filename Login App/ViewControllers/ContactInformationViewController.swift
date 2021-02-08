//
//  ContactInformationViewController.swift
//  Login App
//
//  Created by Maria Mamina on 06.02.2021.
//

import UIKit

class ContactInformationViewController: UIViewController {
  
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var adressLabel: UILabel!
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userInfo = self.userInfo else { return }
       
        phoneNumberLabel.text = userInfo.person.contactInfo.phoneNumber
        emailLabel.text = userInfo.person.contactInfo.email
        countryLabel.text = userInfo.person.contactInfo.country
        cityLabel.text = userInfo.person.contactInfo.city
        adressLabel.text = userInfo.person.contactInfo.adress
   
    }

}
