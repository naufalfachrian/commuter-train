//
//  MainContentView.swift
//  CommuterTrain
//
//  Created by Bunga Mungil on 12/10/23.
//

import SwiftUI

struct MainContentView: View {
    
    @Environment(\.managedObjectContext)
    private var viewContext

    let menus: [MainMenu] = [
        .position,
        .schedule,
        .tariff,
        .route
    ]
    
    @State var selectedMenu: Int = 0
    
    var body: some View {
#if os(macOS)
        NavigationView {
            List(self.menus, id: \.id, selection: $selectedMenu) { menu in
                NavigationLink {
                    FeatureView(menu: menu)
                } label: {
                    Label(menu.longLabelText, systemImage: menu.systemImage)
                }
            }.listStyle(SidebarListStyle())
        }
#endif
#if os(iOS)
        TabView {
            ForEach(self.menus, id: \.id) { menu in
                FeatureView(menu: menu)
                    .tabItem {
                        Label(menu.shortLabelText, systemImage: menu.systemImage)
                    }
            }
        }
#endif
    }
    
}

struct MainContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainContentView()
    }
    
}
