//
//  AboutMeViewController.swift
//  Login App
//
//  Created by Maria Mamina on 07.02.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    var userInfo: User!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userInfo = self.userInfo else {
            return
        }
        nameLabel.text = userInfo.person
        photoImageView.image = UIImage(named: userInfo.image)
        dateOfBirthLabel.text = userInfo.dateOfBirth
        hobbyLabel.text = userInfo.hobby

        // Do any additional setup after loading the view.
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
