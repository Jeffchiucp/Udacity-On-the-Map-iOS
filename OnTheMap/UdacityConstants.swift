//
//  UdacityConstants.swift
//  OnTheMap
//
//  Created by Jeff Chiu on 12/04/15.
//  Copyright (c) 2015 Jeff Chiu. All rights reserved.
//

import Foundation

extension UdacityClient {
    
    struct Constants {
        static let BaseURL : String = "https://www.udacity.com/api/"
    }
    
    struct Methods {
        static let Session = "session"
        static let User = "users/"
    }
    
    struct Messages {
        static let loginError = "Udacity Login failed. Incorrect username or password"
        static let networkError = "Error connecting to Udacity."
    }
    
}