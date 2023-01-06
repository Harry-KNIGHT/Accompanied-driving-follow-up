//
//  SCAApp.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

@main
struct SCAApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
				.environmentObject(AddDistanceViewModel())
        }
    }
}
