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
    
    public func SetFromReviewModel(review: ProfileReview)->Void{
        self.profileImage?.image = review.profile.Image
        self.profileName?.text = review.profile.Name
        self.comment?.text = review.comment
        self.time?.text = "\(review.time / 60) hours \(review.time % 60) minutes"
        self.starRating.rating = Double(review.rating)
    }
}
