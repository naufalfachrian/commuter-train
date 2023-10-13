//
//  StationPickerView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 13/10/23.
//

import SwiftUI

struct StationPickerView<Content>: View where Content: View {
    
    @ObservedObject var stationsViewModel: StationsViewModel
    
    @State private var searchText = ""
    
    let title: String
    
    let navigation: (String) -> Content
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(searchResults, id: \.self) { station in
                    NavigationLink {
                        navigation(station)
                    } label: {
                        Text(station)
                    }

                }
            }
            .navigationTitle(title)
            .navigationSplitViewColumnWidth(min: 200, ideal: 200, max: 300)
        } detail: {
            //
        }
        .navigationTitle(title)
        #if os(iOS)
        .searchable(text: $searchText, prompt: "Search Station")
        #endif
        #if os(macOS)
        .searchable(text: $searchText, placement: .automatic, prompt: "Search Station")
        #endif
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return stationsViewModel.stations
        } else {
            return stationsViewModel.stations.filter {
                $0.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
}
