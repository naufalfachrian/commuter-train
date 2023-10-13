//
//  MainContentView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct MainContentView: View {
    
    var body: some View {
#if os(macOS)
        NavigationView {
            List {
                NavigationLink {
                    TrainPositionView()
                } label: {
                    Label("Train Position", systemImage: "train.side.front.car")
                }
                NavigationLink {
                    TrainScheduleView()
                } label: {
                    Label("Train Schedule", systemImage: "timer")
                }
                NavigationLink {
                    FeeCalculatorView()
                } label: {
                    Label("Tariff Calculator", systemImage: "creditcard")
                }
                NavigationLink {
                    RouteInformationView()
                } label: {
                    Label("Route Information", systemImage: "map")
                }
            }.listStyle(SidebarListStyle())
            ContentView()
        }
#endif
#if os(iOS)
        TabView {
            TrainPositionView()
                .tabItem {
                    Label("Position", systemImage: "train.side.front.car")
                }
            TrainScheduleView()
                .tabItem {
                    Label("Schedule", systemImage: "timer")
                }
            FeeCalculatorView()
                .tabItem {
                    Label("Tariff", systemImage: "creditcard")
                }
            RouteInformationView()
                .tabItem {
                    Label("Route", systemImage: "map")
                }
        }
#endif
    }
    
}

struct MainContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainContentView()
    }
    
}
