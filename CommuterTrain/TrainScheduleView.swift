//
//  TrainScheduleView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct TrainScheduleView: View {
    private static let stations = [
        "Kalideres",
        "Pesing"
    ]
    
    @State private var selectedStation = TrainScheduleView.stations[0]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Picker(selection: $selectedStation, label: Text("Choose Station")) {
                        ForEach(TrainScheduleView.stations, id: \.self) { stationName in
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
                    DatePicker(selection: .constant(Date()), displayedComponents: .hourAndMinute, label: { Text("From") })
                    DatePicker(selection: .constant(Date().addingTimeInterval(3600)), displayedComponents: .hourAndMinute, label: { Text("To") })
                }
            }
            .navigationTitle("Train Schedule")
        }
    }
}

struct TrainScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TrainScheduleView()
    }
}
