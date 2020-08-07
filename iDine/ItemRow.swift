//
//  ItemRow.swift
//  iDine
//
//  Created by anurak teerarattananukulchai on 6/8/2563 BE.
//  Copyright © 2563 anurak teerarattananukulchai. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    static let colors: [String : Color] = ["D":.purple,"G":.blue,"N":.red,"S":.green,"V":.orange]
    var item: MenuItem
    var body: some View {
        NavigationLink(destination: ItemDetail(item: item)) {
        HStack {
            Image(item.thumbnailImage)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 3))
                
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
//            .layoutPriority(1)
//            this line is for telling swiftUI that dont wrap the text inside up as it was bug in previous version of SwiftUI but for now it has been fixed
            
            Spacer()
            
//             in this case, we need to tell swift UI that the string itself is identifiable by using \.self
            ForEach(item.restrictions, id: \.self) {
                restriction in Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(Self.colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
