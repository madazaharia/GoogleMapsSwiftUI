//
//  GoogleMapsSwiftUIApp.swift
//  GoogleMapsSwiftUI
//
//  Created by Madalin Zaharia on 24.10.2023.
//

import GoogleMaps
import GooglePlaces
import SwiftUI

@main
struct GoogleMapsSwiftUIApp: App {
    // inject AppDelegate into SwiftUI lifecycle via adaptor
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
