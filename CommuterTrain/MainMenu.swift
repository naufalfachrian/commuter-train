//
//  MainMenu.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 13/10/23.
//

import Foundation

protocol MainMenuDetail {
    
    var id: Int { get }
    
    var shortLabelText: String { get }
    
    var longLabelText: String { get }
    
    var systemImage: String { get }
    
}


enum MainMenu: MainMenuDetail {
    
    case position, schedule, tariff, route
    
    var id: Int {
        switch self {
        case .position:
            return 0
        case .schedule:
            return 1
        case .tariff:
            return 2
        case .route:
            return 3
        }
    }
    
    var shortLabelText: String {
        switch self {
        case .position:
            return "Position"
        case .schedule:
            return "Schedule"
        case .tariff:
            return "Tariff"
        case .route:
            return "Route"
        }
    }
    
    var longLabelText: String {
        switch self {
        case .position:
            return "Train Position"
        case .schedule:
            return "Train Schedule"
        case .tariff:
            return "Tariff Calculator"
        case .route:
            return "Route Information"
        }
    }
    
    var systemImage: String {
        switch self {
        case .position:
            return "train.side.front.car"
        case .schedule:
            return "timer"
        case .tariff:
            return "creditcard"
        case .route:
            return "map"
        }
    }
    
}

