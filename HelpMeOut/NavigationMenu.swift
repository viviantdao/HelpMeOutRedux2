//
//  NavigationMenu.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit

class NavigationMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func profileButtonClicked(_ sender: UIButton) {
        self.navigationController?.pushViewController(UIViewController.GetInstance(for: ProfilePage.self)!, animated: true)
    }

    
    
    @IBAction func logButtonClicked(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(UIViewController.GetInstance(for: LogPage.self)!, animated: true)
    }
    
    @IBAction func dismissButtonClicked(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
}
