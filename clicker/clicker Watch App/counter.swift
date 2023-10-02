//
//  counter.swift
//  clicker Watch App
//
//  Created by dongjoon min on 2023/10/02.
//

import Foundation


struct Counter<Unit> {
    var count: Int
    
    mutating func add() {
        count += 1
    }
    
    mutating func subtract() {
        if (count > 0) {
            count -= 1
        }
    }
    
    mutating func reset() {
        count = 0
    }
    
    
    
}
