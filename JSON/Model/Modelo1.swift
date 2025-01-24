//
//  Modelo1.swift
//  JSON
//
//  Created by Gabo on 11/01/25.
//

import Foundation

struct Modelo1: Decodable {
    var id: Int
    var name: String
    var email: String
    var address: Address
}
struct Address: Decodable {
    var street: String
    var geo: Geo
}
struct Geo: Decodable {
    var lat: String
    var lng: String
}
