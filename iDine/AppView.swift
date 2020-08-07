//
//  Appview.swift
//  iDine
//
//  Created by anurak teerarattananukulchai on 6/8/2563 BE.
//  Copyright © 2563 anurak teerarattananukulchai. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Menu")
            }
            OrderView()
                .tabItem {
                Image(systemName: "square.and.pencil")
                    Text("Order")
            }
        }
    }
}

struct Appview_Previews: PreviewProvider {
     static let order = Order()
    static var previews: some View {
       
        AppView().environmentObject(order)
    }
}
