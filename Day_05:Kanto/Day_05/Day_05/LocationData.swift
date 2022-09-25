//
//  LocationData.swift
//  Day_05
//
//  Created by Meowth Ourea on 8/18/22.
//

import Foundation
import MapKit

class Pin: MKPointAnnotation {
    
    init(title:String, subtitle:String, coordinate: CLLocationCoordinate2D ) {
        super.init()
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

let locations : [Pin] = [
    Pin(title: "Школа 21", subtitle: "Приходите к нам учиться; и корова, и волчица;", coordinate: CLLocationCoordinate2D(latitude: 55.797129, longitude: 37.579789)),
    Pin(title: "home", subtitle: "home sweet home", coordinate: CLLocationCoordinate2D(latitude: 55.749504, longitude: 37.537711)),
    Pin(title: "work", subtitle: "navernoe", coordinate: CLLocationCoordinate2D(latitude: 55.742514, longitude: 37.531397))
]
