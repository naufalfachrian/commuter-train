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
        ) { stationName in
            Text(stationName)
        }
    }
}

struct TrainPositionView_Previews: PreviewProvider {
    static var previews: some View {
        TrainPositionView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
