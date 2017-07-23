//
//  LoginPage.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

class LoginPage: UIViewController{
    
    @IBOutlet weak var socialMediaImage: UIImageView!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SetSocialMediaInformation()
    }
    
    private func SetSocialMediaInformation(){
       
        if let loginType = LoginService.Instance.LoginType{
            var login:String
            
            switch loginType {
                
            case .facebook:
                login = "facebook"
            case .google:
                login = "google"
            case .outlook:
                login = "outlook"
                
            }
            
            socialMediaImage.image = UIImage(named: "\(login)Logo")
            self.title = "\(login.capitalized) Login"
        }
        
    }
    
    
    
}
