//
//  Person.swift
//  mvvm-letsgo
//
//  Created by dongjoon min on 2022/10/23.
//

import SwiftUI


struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
