//
//  DrinkRow.swift
//  starBooks
//
//  Created by Carlos Petit on 30-04-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName:String
    var drinks:[Drink]
    
    
    var body: some View {
        VStack(alignment:.leading) {
            
            Text(categoryName).font(.title).foregroundColor(.primary)
            
            ScrollView(.horizontal, showsIndicators: false ){
                HStack(alignment: .top) {
                    ForEach(self.drinks, id: \.name) { drink in
                        NavigationLink(destination: DrinkDetail(drink: drink)){
                            DrinkItem(drink: drink).frame(width: 300).padding(.trailing, 30)
                        }
                         
                    }
                }
            }
        }
        
       
    }
}

struct DrinkRow_Previews: PreviewProvider {
    let appearance = UITableViewCell.appearance()
    static var previews: some View {
        DrinkRow(categoryName: "", drinks: drinkData)
    }
}
