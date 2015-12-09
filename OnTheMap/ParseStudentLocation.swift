//
//  ParseStudentLocation.swift
//  OnTheMap
//
//  Created by Jeff Chiu on 12/04/15.
//  Copyright (c) 2015 Jeff Chiu. All rights reserved.
//

import Foundation

struct ParseStudentLocation: CustomStringConvertible {
    var objectId: String
    var uniqueKey: String
    var firstName: String
    var lastName: String
    var mapString: String
    var mediaURL: String
    var latitude: Float
    var longitude: Float
    
    var description: String {
        return "ParseStudentLocation: \(objectId)-\(uniqueKey)"
    }
    
    init( dictionary: [String : AnyObject] ) {
        objectId = dictionary[ParseClient.JSONResponseKeys.objectId] as! String
        uniqueKey = dictionary[ParseClient.JSONResponseKeys.uniqueKey] as! String
        firstName = dictionary[ParseClient.JSONResponseKeys.firstName] as! String
        lastName = dictionary[ParseClient.JSONResponseKeys.lastName] as! String
        mapString = dictionary[ParseClient.JSONResponseKeys.mapString] as! String
        mediaURL = dictionary[ParseClient.JSONResponseKeys.mediaURL] as! String
        latitude = dictionary[ParseClient.JSONResponseKeys.latitude] as! Float
        longitude = dictionary[ParseClient.JSONResponseKeys.longitude] as! Float
    }
    
    static func locationsFromResults(results: [[String : AnyObject]]) -> [ParseStudentLocation] {
        var locations = [ParseStudentLocation]()
        
        for result in results {
            locations.append( ParseStudentLocation(dictionary: result) )
        }
        
        return locations
    }

}