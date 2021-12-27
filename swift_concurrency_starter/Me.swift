//
//  Me.swift
//  swift_concurrency_starter
//
//  Created by 井戸田捺貴 on 2021/12/27.
//

struct Me: Codable, Equatable, Identifiable {
    let id: Int
    let name: String
    let htmlUrl: String
    let avatarUrl: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case htmlUrl = "html_url"
        case avatarUrl = "avatar_url"
   }
}
