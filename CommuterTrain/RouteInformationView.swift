//
//  RouteInformationView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct RouteInformationView: View {
    @State var sideBarVisibility: NavigationSplitViewVisibility = .all
    
    let commuterLines: [CommuterLine] = [
        CommuterLine(color: .blue, name: "Cikarang Line"),
        CommuterLine(color: .red, name: "Bogor Line"),
        CommuterLine(color: .pink, name: "Tanjungpriok Line"),
        CommuterLine(color: .green, name: "Rangkasbitung Line"),
        CommuterLine(color: .orange, name: "Tangerang Line"),
        CommuterLine(color: .red, name: "Yogyakarta Line")
    ]
    
    var body: some View {
        NavigationStack {
            List(self.commuterLines) { line in
                NavigationLink {
                    Text(line.name).foregroundColor(line.color)
                        .navigationTitle(line.name)
                } label: {
                    Text(line.name).foregroundColor(line.color)
                }
            }
            .navigationTitle("Route Information")
        }
    }
}

struct RouteInformationView_Previews: PreviewProvider {
    static var previews: some View {
        RouteInformationView()
    }
}
