//
//  Content-ViewModel.swift
//  mvvm_sample_1
//
//  Created by dongjoon min on 2022/11/18.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
    }
}
