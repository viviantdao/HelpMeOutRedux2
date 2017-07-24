//
//  ProfileReviewTableViewCell.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit
import Cosmos

class ProfileReviewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var starRating: CosmosView!
    
    
}
