//
//  ContentView.swift
//  starBooks
//
//  Created by Carlos Petit on 30-04-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var highlight = false
    var categories:[String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    init() {
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(categories.keys.sorted(), id: \String.self){ key in
                    DrinkRow(categoryName: key.uppercased(), drinks: self.categories[key]!)
                        .frame(height: 350)
                        .padding(.top)
                        .padding(.bottom).buttonStyle(PlainButtonStyle())
                }
            }.navigationBarTitle(Text("StarBook´s")).onTapGesture {return}
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


