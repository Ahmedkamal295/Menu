//
//  BrandsModel.swift
//  Menu
//
//  Created by Ahmed kamal on 9/13/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import Foundation
struct BrandsModel : Codable {
    let value : Bool?
    let data : [BrandsData]?
    let code : Int?

    enum CodingKeys: String, CodingKey {

        case value = "value"
        case data = "data"
        case code = "code"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        value = try values.decodeIfPresent(Bool.self, forKey: .value)
        data = try values.decodeIfPresent([BrandsData].self, forKey: .data)
        code = try values.decodeIfPresent(Int.self, forKey: .code)
    }

}
struct BrandsData : Codable {
    let id : Int?
    let name : String?
    let image : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case image = "image"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        image = try values.decodeIfPresent(String.self, forKey: .image)
    }

}
