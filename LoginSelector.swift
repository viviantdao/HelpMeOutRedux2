//
//  LoginSelectorViewController.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/22/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit

class LoginSelector: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginButtonClicked(_ sender: SocialMediaLoginButton) {
        switch sender.SocialMediaType {
        case .facebook:
            print("facebook")
        case .google:
            print("google")
        case .outlook:
            print("outlook")
        }
    }
}
