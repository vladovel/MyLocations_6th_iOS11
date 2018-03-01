//
//  Location+CoreDataClass.swift
//  MyLocations_6th_iOS11
//
//  Created by Vlado Velkovski on 2/26/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//
//

import Foundation
import CoreData
import MapKit
import CoreLocation

@objc(Location)
public class Location: NSManagedObject, MKAnnotation {

    public var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(latitude, longitude)
    }
    
    // Title and subtitle for use by selection UI.
    public var title: String? {
        if locationDescription.isEmpty {
            return "(No Description)"
        } else {
            return locationDescription
        }
    }
    
    public var subtitle: String? {
        return category
    }
    
}
