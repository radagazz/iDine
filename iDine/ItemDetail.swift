//
//  ItemDetail.swift
//  iDine
//
//  Created by anurak teerarattananukulchai on 6/8/2563 BE.
//  Copyright © 2563 anurak teerarattananukulchai. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    var body: some View {
        
        VStack {
            ZStack(alignment: .bottomTrailing){
            Image(item.mainImage)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 200)
                .cornerRadius(20)
                .shadow(radius: 20)
                
                
                Text("Photo:\(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x:-10, y:-15)
                
            }
            Text(item.description)
                .padding()
            Button("Order This"){
                self.order.add(item: self.item)
            }.font(.headline)
            Spacer()
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
    }
    }
}
