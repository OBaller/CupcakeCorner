//
//  Order.swift
//  CupcakeCorner
//
//  Created by naseem on 04/02/2022.
//

import SwiftUI

class Order: ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]

    @Published var type = 0
    @Published var quantity = 3

    @Published var specialRequestEnabled = false
    @Published var extraFrosting = false
    @Published var addSprinkles = false
}