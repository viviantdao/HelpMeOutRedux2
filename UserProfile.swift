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
    private let _reviews: [ProfileReview]?
    private let _rating: Int
    
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
    
    public var Reviews: [ProfileReview]?{
        get {
            return self._reviews
        }
    }
    
    public var Rating: Int {
        get {
            return self._rating
        }
    }
    
    private init(image:UIImage, name:String, rating:Int, reviews:[ProfileReview]?){
        self._image = image
        self._name = name
        self._rating = rating
        self._reviews = reviews
    }
    
    public static func CreateProfile(image:UIImage, name:String, rating:Int, reviews:[ProfileReview]? = nil)->UserProfile{
        return UserProfile(image: image, name:name, rating: rating, reviews: reviews)
    }
}
