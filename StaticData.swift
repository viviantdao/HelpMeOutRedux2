//
//  StaticData.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

class StaticData {
    
    public static let SteveBallmerProfile = UserProfile.CreateProfile(image: UIImage(named:"steveballmer.png")!,
                                                                      name: "Steve  Clipper",
                                                                      rating: 2,
                                                                      time: 10)
    
    public static let SteveJobsProfile = UserProfile.CreateProfile(image: UIImage(named:"stevejobs.png")!,
                                                                   name: "Steve Career",
                                                                   rating: 4,
                                                                   time: 200)
    
    
    
    public static let BillGProfile = UserProfile.CreateProfile(image: UIImage(named: "billg.png")!,
                                                               name: "William F Door",
                                                               rating: 5,
                                                               time: 300,
                                                               reviews: [
                                                                    ProfileReview(profile: StaticData.SteveJobsProfile,
                                                                                  comment: "He helped save my company",
                                                                                  time: 330,
                                                                                  rating: 5),
                                                                    ProfileReview(profile: StaticData.SteveBallmerProfile,
                                                                                  comment: "He warned me about windows 8",
                                                                                  time: 90,
                                                                                  rating: 4)
                                                                
                                                                ],
                                                               log: [
                                                                    LogEntry(user: "Jimmy Conroy", time: 60, taskName: "Built his computer", rating: 5),
                                                                    LogEntry(user: "Kathleen Bays", time: 180, taskName: "Helped move in", rating: 5),
                                                                    LogEntry(user: "Steve McMan", time: 10, taskName: "Lent some sugar", rating: 5),
                                                                    LogEntry(user: "YESC", time: 300, taskName: "Helped plant trees", rating: 5)
                                                                ]
                                                               )
}
