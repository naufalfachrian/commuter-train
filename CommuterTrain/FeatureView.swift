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
        case .schedule:
            TrainScheduleView()
        case .tariff:
            FeeCalculatorView()
        case .route:
            RouteInformationView()
        }
    }
    
}
