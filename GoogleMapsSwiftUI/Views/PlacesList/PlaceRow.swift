//
//  PlaceRow.swift
//  GoogleMapsSwiftUI
//
//  Created by Madalin Zaharia on 24.10.2023.
//

import GooglePlaces
import SwiftUI

struct PlaceRow: View {
    
    // MARK: - Properties
    var place: GMSPlace
    
    // MARK: - Drawing
    var body: some View {
        HStack {
            Text(place.name ?? "")
                .foregroundColor(.white)
            
            Spacer()
        }
    }
}
