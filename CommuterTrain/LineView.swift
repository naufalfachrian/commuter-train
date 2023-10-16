//
//  LineView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 16/10/23.
//

import SwiftUI

struct LineView: View {
    
    var size: CGFloat? = nil
    
    var spacing: CGFloat? = nil
    
    let lines: [Line]
    
    var body: some View {
        HStack(alignment: .center, spacing: spacing ?? 4.0) {
            ForEach(lines) { line in
                Image(line.imageName!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: size ?? 20.0, height: size ?? 20.0)
            }
        }
    }
    
}
