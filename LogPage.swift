//
//  LogPage.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/25/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit

class LogPage: UIViewController {
    
    @IBOutlet weak var tableView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "My Log"
        tableView.layer.cornerRadius = 10
        tableView.backgroundColor = .white
    }

}
