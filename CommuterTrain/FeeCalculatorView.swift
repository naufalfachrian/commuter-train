//
//  FeeCalculatorView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct FeeCalculatorView: View {
    
    @Environment(\.managedObjectContext)
    private var viewContext
    
    var body: some View {
        StationPickerView(
            title: "Tariff Calculator") { stationName in
                Text(stationName)
            }
    }
    
}

struct FeeCalculationView_Previews: PreviewProvider {
    static var previews: some View {
        FeeCalculatorView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
