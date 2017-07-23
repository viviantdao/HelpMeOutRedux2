//
//  LoginViewModel.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation

struct LoginViewModel {
    
    let username: String!
    let password: String!
    
    init(username: String, password:String){
        self.username = username
        self.password = password
    }
    
    
}
