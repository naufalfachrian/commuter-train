//
//  TrainScheduleView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct TrainScheduleView: View {
    
    var body: some View {
        StationPickerView(
            title: "Train Schedule"
        ) { station in
            Form {
                LabeledContent {
                    Text(station.name!)
                } label: {
                    Text("Station")
                }
                LabeledContent {
                    DatePicker(selection: .constant(Date()), displayedComponents: .hourAndMinute, label: { Text("From") })
                        .labelsHidden()
                } label: {
                    Text("From")
                }
                LabeledContent {
                    DatePicker(selection: .constant(Date().addingTimeInterval(3600)), displayedComponents: .hourAndMinute, label: { Text("To") })
                        .labelsHidden()
                } label: {
                    Text("To")
                }
                #if os(macOS)
                Spacer()
                #endif
            }
            .navigationTitle("Train Schedule")
            #if os(macOS)
            .padding()
            #endif
        }
        
        
        
    }
}

struct TrainScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TrainScheduleView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
