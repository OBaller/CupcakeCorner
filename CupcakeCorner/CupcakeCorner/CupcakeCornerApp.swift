//
//  CupcakeCornerApp.swift
//  CupcakeCorner
//
//  Created by naseem on 03/02/2022.
//

import SwiftUI

@main
struct CupcakeCornerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class User: ObservableObject, Codable {
  enum CodingKeys: CodingKey {
        case name
  }
   @Published var name = "Paul Hudson"
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decode(String.self, forKey: .name)
}
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(name, forKey: .name)
}
}
