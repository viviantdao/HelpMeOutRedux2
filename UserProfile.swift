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
    
    private var _image:UIImage!
    private var _name: String
    private var _rating: Int
    private var _time: Int
    private var _reviews: [ProfileReview]?
    private var _logEntries: [LogEntry]?
    
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
    
    public var LogEntries: [LogEntry]? {
        get {
            return self._logEntries
        }
    }
    
    public var Rating: Int {
        get {
            return self._rating
        }
    }
    
    public var Time: Int {
        get {
            return self._time
        }
        
        set {
            
            if newValue <= 0 {
                self._time = 0
            }
            
            self._time = newValue
        }
    }
    
    private init(image:UIImage,
                 name:String,
                 rating:Int,
                 time: Int,
                 reviews:[ProfileReview]?,
                 log:[LogEntry]?){
        
        self._image = image
        self._name = name
        self._rating = rating
        self._time = time
        self._reviews = reviews
        self._logEntries = log
        
    }
    
    public static func CreateProfile(image:UIImage,
                                     name:String,
                                     rating:Int,
                                     time: Int,
                                     reviews:[ProfileReview]? = nil,
                                     log:[LogEntry]? = nil)->UserProfile{
        
        return UserProfile(image: image, name:name, rating: rating, time: time, reviews: reviews, log: log)
        
    }
}
