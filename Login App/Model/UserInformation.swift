//
//  UserInformation.swift
//  Login App
//
//  Created by Maria Mamina on 07.02.2021.
//

import Foundation

struct User {
    let userName = "User"
    let password = "Password"
    let person = "Maria Mamina"
    
    let dateOfBirth = "18.01.1985"
    let image = "photo.png"
    let hobby = "Fitness"
    let contactInfo: ContactInfo
    
}
struct ContactInfo {
  
    let email = "maria.mamina3@gmail.com"
    let phoneNumber = "+358442704121"
    
    let country = "Finland"
    let city = "Helsinki"
    let adress = "Arabiankatu 4 C 125"
}

let newContactInfo = ContactInfo()
let myInfo = User(contactInfo: newContactInfo)
