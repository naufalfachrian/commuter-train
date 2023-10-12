//
//  TrainPositionView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct TrainPositionView: View {
    private static let stations = [
        "Kalideres",
        "Pesing"
    ]
    
    @State private var selectedStation = TrainPositionView.stations[0]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Picker(selection: $selectedStation, label: Text("Choose Station")) {
                        ForEach(TrainPositionView.stations, id: \.self) { stationName in
                            Text(stationName)
                        }
                    }
                    .tint(CommuterTrainApp.accentColor)
                    #if os(iOS)
                    .pickerStyle(.navigationLink)
                    #endif
                    #if os(macOS)
                    .pickerStyle(.menu)
                    #endif
                }
            }
            .navigationTitle("Train Position")
        }
    }
}

struct TrainPositionView_Previews: PreviewProvider {
    static var previews: some View {
        TrainPositionView()
    }
}
