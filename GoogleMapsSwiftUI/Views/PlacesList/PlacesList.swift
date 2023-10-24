//
//  PlacesList.swift
//  GoogleMapsSwiftUI
//
//  Created by Madalin Zaharia on 24.10.2023.
//

import SwiftUI

struct PlacesList: View {
    
    // MARK: - Properties
    @ObservedObject private var placesManager = PlacesManager()
    
    // MARK: - Drawing
    var body: some View {
        NavigationView {
            List(placesManager.places, id: \.place.placeID) { placeLikelihood in
                PlaceRow(place: placeLikelihood.place)
            }
            .navigationBarTitle("Nearby Locations")
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
