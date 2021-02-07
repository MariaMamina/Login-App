//
//  ContactInformationViewController.swift
//  Login App
//
//  Created by Maria Mamina on 06.02.2021.
//

import UIKit

class ContactInformationViewController: UIViewController {
   
    var userInfo: User!
    
  
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var adressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userInfo = self.userInfo else { return }
       
        phoneNumberLabel.text = userInfo.contactInfo.phoneNumber
        emailLabel.text = userInfo.contactInfo.email
        countryLabel.text = userInfo.contactInfo.country
        cityLabel.text = userInfo.contactInfo.city
        adressLabel.text = userInfo.contactInfo.adress
   
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
