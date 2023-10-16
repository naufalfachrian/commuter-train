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
            LineView(lines: station.lines!.compactMap { $0 as? Line })
        }
    }
    
}
