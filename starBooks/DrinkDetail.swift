//
//  DrinkDetail.swift
//  starBooks
//
//  Created by Carlos Petit on 01-05-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink:Drink
    
    var body: some View {
        List{
            ZStack(alignment: .bottom) {
                Image(drink.imageName).resizable().aspectRatio(contentMode: .fit)
                Rectangle().frame(height: 80).opacity(0.25).blur(radius: 10)
                HStack{
                    VStack(alignment:.leading, spacing: 8){
                        Text(drink.name).foregroundColor(.white).font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack {
                Text(drink.description).foregroundColor(.primary).font(.body).lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
                
            }.padding(.top).padding(.bottom)
        
        }.edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(Color.blue).font(.headline).frame(width: 200, height: 50, alignment: .center)
//            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            
    }
}

struct OrderButton:View {
    var body: some View{
        Button(action: {}){
            Text("Order Now!!").frame(width: 250, height: 50, alignment: .center)
            }.buttonStyle(GradientButtonStyle()).cornerRadius(10)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
