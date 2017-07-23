//
//  LoginService.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/23/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation

class LoginService {
    
    private var _loginType:SocialMediaLoginType?
    public static let Instance = LoginService()
    
    private init(){}
    
    public var LoginType:SocialMediaLoginType? {
        
        get {
            return self._loginType
        }
    }
    
    func SetLoginType(type: SocialMediaLoginType)->Void{
        self._loginType = type
    }
    
    func Login(loginInfo: LoginViewModel, callback: @escaping (BearerToken)->Void)->Void{
        
        DispatchQueue.global(qos: .background).async {
            
            //simulate server call here to get bearer token
            sleep(3)
            
            DispatchQueue.main.async {
                
                //return back to main thread with bearer token
                callback(BearerToken())
            }
        }
    }
}
