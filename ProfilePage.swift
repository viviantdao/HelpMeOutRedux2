//
//  ProfilePage.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit
import Cosmos

class ProfilePage: UIViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var starRating: CosmosView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.profileImage.setRoundedCorners(borderWidth: 10)
    }
}
