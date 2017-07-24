//
//  UserProfileService.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation

class UserProfileService: BaseRepository<UserProfile>{
    
    public static let Instance = UserProfileService()
    
    private init(){
        super.init([StaticData.BillGProfile, StaticData.SteveBallmerProfile, StaticData.SteveJobsProfile])
    }
    
    public func GetLoggedInUser()->UserProfile {
        return StaticData.BillGProfile
    }
    
    
}
