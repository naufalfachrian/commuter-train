//
//  TransportLineView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 16/10/23.
//

import SwiftUI

struct TransportLineView: View {
    
    let transportLines: [TransportLine]
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            ForEach(transportLines) { transportLine in
                Image(transportLine.imageName!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20.0, height: 20.0)
            }
        }
    }
    
}
