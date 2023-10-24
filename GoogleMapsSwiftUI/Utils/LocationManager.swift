//
//  LocationManager.swift
//  GoogleMapsSwiftUI
//
//  Created by Madalin Zaharia on 24.10.2023.
//

import Combine
import CoreLocation
import Foundation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    // 1
    @Published var location: CLLocation? {
        willSet {
            objectWillChange.send()
        }
    }
    
    // 2
    var latitude: CLLocationDegrees {
        return location?.coordinate.latitude ?? 0
    }
    
    var longitude: CLLocationDegrees {
        return location?.coordinate.longitude ?? 0
    }
    
    // 3
    override init() {
        super.init()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    // 4
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        
        self.location = location
    }
}

