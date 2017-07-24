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
    @IBOutlet weak var userNameLabel: UILabel!
    
    let user = UserProfileService.Instance.GetLoggedInUser()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.userNameLabel.text = user.Name
        self.profileImage.image = user.Image
        self.starRating.rating = Double(user.Rating)
        self.profileImage.setRoundedCorners(borderWidth: 10)
    }
}
