//
//  FruitsModel.swift
//  Fructus
//
//  Created by python on 04/11/23.
//

import SwiftUI

//MARK: Fruit Data Model

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
