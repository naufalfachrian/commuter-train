//
//  StationPickerView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 13/10/23.
//

import SwiftUI

struct StationPickerView<Content>: View where Content: View {
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Station.name, ascending: true)], animation: .default)
    private var stations: FetchedResults<Station>
    
    @State private var searchText = ""
    
    let title: String
    
    let navigation: (String) -> Content
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(searchResults, id: \.self) { station in
                    NavigationLink {
                        navigation(station.name!)
                    } label: {
                        StationItemView(station: station)
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
    
    var searchResults: [Station] {
        if searchText.isEmpty {
            return stations.compactMap{ $0 }
        } else {
            return stations.filter {
                $0.name!.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
}
