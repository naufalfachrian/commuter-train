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
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Line.name, ascending: true)], animation: .default)
    private var lines: FetchedResults<Line>
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(lines) { line in
                    NavigationLink {
                        Text(line.name!)
                            .navigationTitle(line.name!)
                    } label: {
                        HStack {
                            Image(line.imageName!)
                            Text(line.name!)
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
