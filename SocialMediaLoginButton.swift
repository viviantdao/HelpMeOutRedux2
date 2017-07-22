//
//  SocialMediaLoginButton.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/22/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import UIKit

@IBDesignable public class SocialMediaLoginButton: UIButton {
    
    private var _loginType: SocialMediaLoginType = .facebook
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    @IBInspectable public var loginType: String {
        
        get {
            return String(describing: self._loginType)
        }
        
        set {
            self._loginType = SocialMediaLoginType(rawValue: newValue)!
        }
    }
    
    public var SocialMediaType:SocialMediaLoginType {
        get {
            return self._loginType
        }
    }
    
}
