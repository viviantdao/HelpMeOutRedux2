//
//  Profile.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation
import UIKit

class UserProfile {
    
    private let _image:UIImage!
    private let _name: String
    private let _reviews: [ProfileReviews]
    
    
    public var Image:UIImage {
        get {
            return self._image
        }
    }
    
    public var Name: String {
        get{
            return self._name
        }
    }
    
    public var Reviews: [ProfileReviews]{
        get {
            return self._reviews
        }
    }
    
    private init(image:UIImage, name:String, reviews:[ProfileReviews]){
        self._image = image
        self._name = name
        self._reviews = reviews
    }
    
    public static func CreateProfile(image:UIImage, name:String, reviews:[ProfileReviews])->UserProfile{
        return UserProfile(image: image, name:name, reviews: reviews)
    }
}
