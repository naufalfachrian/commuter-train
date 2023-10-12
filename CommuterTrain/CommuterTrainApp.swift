//
//  CommuterTrainApp.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

@main
struct CommuterTrainApp: App {
    let persistenceController = PersistenceController.shared
    
    static let accentColor: Color = .orange

    var body: some Scene {
        WindowGroup {
            MainContentView()
                .accentColor(CommuterTrainApp.accentColor)
        }
    }
}
