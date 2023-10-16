//
//  TrainPositionView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct TrainPositionView: View {
    
    var body: some View {
        StationPickerView(
            title: "Train Position"
        ) { station in
            ScrollView(content: {
                VStack(alignment: .leading, spacing: 4.0) {
                    TransportLineView(size: 24.0, spacing: 6.0, transportLines: station.transportLines!.compactMap { $0 as? TransportLine })
                        .padding([.top, .leading])
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            })
            .navigationTitle(station.name!)
        }
    }
}

struct TrainPositionView_Previews: PreviewProvider {
    static var previews: some View {
        TrainPositionView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
