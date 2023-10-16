//
//  FeatureView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 13/10/23.
//

import SwiftUI

struct FeatureView: View {
    
    let menu: MainMenu
    
    var body: some View {
        switch menu {
        case .position:
            TrainPositionView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        case .schedule:
            TrainScheduleView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        case .tariff:
            FeeCalculatorView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        case .route:
            RouteInformationView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        }
    }
    
}
