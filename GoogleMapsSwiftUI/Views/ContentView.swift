//
//  ContentView.swift
//  GoogleMapsSwiftUI
//
//  Created by Madalin Zaharia on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Drawing
    var body: some View {
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            PlacesList()
        }
    }
}

#Preview {
    ContentView()
}
