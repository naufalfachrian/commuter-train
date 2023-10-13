//
//  FeeCalculatorView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct FeeCalculatorView: View {
    
    var body: some View {
        StationPickerView(
            stationsViewModel: StationsViewModel.shared,
            title: "Tariff Calculator") { stationName in
                Text(stationName)
            }
    }
    
}

struct FeeCalculationView_Previews: PreviewProvider {
    static var previews: some View {
        FeeCalculatorView()
    }
}
