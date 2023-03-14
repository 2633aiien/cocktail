//
//  Struct.swift
//  Cocktail_SwiftUI
//
//  Created by allen on 2023/3/13.
//

import Foundation

struct Cocktail: Decodable, Identifiable {
    public var id: String
    public var storeID: String
    public var baseID: String
    public var name: String
    public var introduce: String
    public var recipe: String
    public var review: String
    public var imageUrl: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case storeID = "storeID"
        case baseID = "baseID"
        case name = "name"
        case introduce = "introduce"
        case recipe = "recipe"
        case review = "review"
        case imageUrl = "imageUrl"
    }
}
