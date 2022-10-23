//
//  PersonViewModel.swift
//  mvvm-letsgo
//
//  Created by dongjoon min on 2022/10/23.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder(){
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
}
 
let peopleData =  [
    Person( name: "Jon Snow", email: "jon@email.com", phoneNumber: "010-7199-4154"),
    Person( name: "Austin Snow", email: "jon@email.com", phoneNumber: "010-7199-4154"),
    Person( name: "Sam Snow", email: "jon@email.com", phoneNumber: "010-7199-4154"),
    Person( name: "Taylor Snow", email: "jon@email.com", phoneNumber: "010-7199-4154"),
    Person( name: "Tim Snow", email: "jon@email.com", phoneNumber: "010-7199-4154"),
]
