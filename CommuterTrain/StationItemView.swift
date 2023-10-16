//
//  StationItemView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 16/10/23.
//

import SwiftUI

struct StationItemView: View {
    
    let station: Station
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(station.name!)
            TransportLineView(transportLines: station.transportLines!.compactMap { $0 as? TransportLine })
        }
    }
    
}
