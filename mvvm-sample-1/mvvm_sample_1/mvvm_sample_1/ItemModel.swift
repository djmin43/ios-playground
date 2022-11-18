//
//  ItemModel.swift
//  mvvm_sample_1
//
//  Created by dongjoon min on 2022/11/18.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    
    static var exampleItem = Item(name: "Xbox", description: "Sample description")
    
}
