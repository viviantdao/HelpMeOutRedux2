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
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.activityIndicatorView.hidesWhenStopped = true
        self.activityIndicatorView.stopAnimating()
        SetSocialMediaInformation()
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        
        if canLogin() {
            
            enableControls(enable: false)
            self.activityIndicatorView.isHidden = false
            self.activityIndicatorView.startAnimating()
            
            LoginService.Instance.Login(loginInfo: LoginViewModel(username: (self.userNameText?.text!)!, password: (self.passwordText?.text!)!)
                , callback: { (token) in
                    self.activityIndicatorView.stopAnimating()
                    self.navigationController?.popToRootViewController(animated: true)
            })
            
        }
    }
    
    private func canLogin()->Bool {
        
        
        return (userNameText?.text?.characters.count)! > 0
                && (passwordText?.text?.characters.count)! > 0
        
    }
    
    private func enableControls(enable: Bool = true)->Void{
        
        self.userNameText?.isEnabled = enable
        self.passwordText?.isEnabled = enable
        self.loginButton?.isEnabled = enable
        
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
