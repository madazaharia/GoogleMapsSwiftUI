//
//  PlacesManager.swift
//  GoogleMapsSwiftUI
//
//  Created by Madalin Zaharia on 24.10.2023.
//

import GooglePlaces

class PlacesManager: NSObject, ObservableObject {
    // 1
    private var placesClient = GMSPlacesClient.shared()
    
    // 2
    @Published var places = [GMSPlaceLikelihood]()
    
    override init() {
        super.init()
        
        currentPlacesList { places in
            guard let places = places else { return }
            self.places = places
        }
    }
    
    func currentPlacesList(completion: @escaping (([GMSPlaceLikelihood]?) -> Void)) {
        // 3
        placesClient.currentPlace { (placeLikelihoodList, error) in
            if let error = error {
                print("Places failed to initialize with error \(error)")
                completion(nil)
                return
            }
            
            guard let placeLikelihoodList = placeLikelihoodList else {
                return
            }
            
            self.places = placeLikelihoodList.likelihoods
            print(self.places)
            completion(self.places)
        }
    }
}
