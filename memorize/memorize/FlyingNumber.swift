//
//  FlyingNumber.swift
//  memorize
//
//  Created by dongjoon min on 10/28/23.
//

import SwiftUI

struct FlyingNumber: View {
    
    let number: Int
    
    var body: some View {
        if number != 0 {
            Text(number, format: .number)
            
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
