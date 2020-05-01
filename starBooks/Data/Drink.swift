//
//  Drink.swift
//  starBooks
//
//  Created by Carlos Petit on 30-04-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct Drink:Hashable, Identifiable, Codable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
