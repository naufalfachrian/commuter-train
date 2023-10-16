//
//  RouteInformationView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct RouteInformationView: View {
    
    @Environment(\.managedObjectContext)
    private var viewContext
    
    @State var sideBarVisibility: NavigationSplitViewVisibility = .all
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \TransportLine.name, ascending: true)], animation: .default)
    private var transportLines: FetchedResults<TransportLine>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(transportLines) { transportLine in
                    NavigationLink {
                        Text(transportLine.name!)
                            .navigationTitle(transportLine.name!)
                    } label: {
                        HStack {
                            Image(transportLine.imageName!)
                            Text(transportLine.name!)
                        }
                    }
                }
            }
            .navigationTitle("Route Information")
        }
    }
}

struct RouteInformationView_Previews: PreviewProvider {
    static var previews: some View {
        RouteInformationView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
