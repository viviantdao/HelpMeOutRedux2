//
//  LoginSelectorViewController.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/22/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit

class LoginSelector: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Login"
    }
    
    
    @IBAction func loginButtonClicked(_ sender: SocialMediaLoginButton) {
        
        LoginService.Instance.SetLoginType(type: sender.SocialMediaType)
        self.navigationController?.pushViewController(UIViewController.GetInstance(for: LoginPage.self)!, animated: true)
        
    }
}
