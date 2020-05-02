//
//  DrinkItem.swift
//  starBooks
//
//  Created by Carlos Petit on 30-04-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Image(drink.imageName)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 170, alignment: .center)
                .cornerRadius(15).shadow(radius:5, x: 0, y: 0)
            
            VStack(alignment: .leading, spacing: 5.0){
                Text(drink.name).foregroundColor(.primary).font(.headline)
                Text(drink.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2).frame(height: 40)
            }
            }.padding(.leading).padding(.top)
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
