//
//  ProfileReviews.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

struct ProfileReview {
    
    let profile: UserProfile!
    let comment: String!
    let time:Int!
    let rating: Int!
    
    init(profile: UserProfile, comment: String, time:Int, rating:Int){
        self.profile = profile
        self.comment = comment
        self.time = time
        self.rating = rating
    }
}
