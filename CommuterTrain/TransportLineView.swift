//
//  TransportLineView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 16/10/23.
//

import SwiftUI

struct TransportLineView: View {
    
    var size: CGFloat? = nil
    
    var spacing: CGFloat? = nil
    
    let transportLines: [TransportLine]
    
    var body: some View {
        HStack(alignment: .center, spacing: spacing ?? 4.0) {
            ForEach(transportLines) { transportLine in
                Image(transportLine.imageName!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: size ?? 20.0, height: size ?? 20.0)
            }
        }
    }
    
}
