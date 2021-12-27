//
//  MeApi.swift
//  swift_concurrency_starter
//
//  Created by 井戸田捺貴 on 2021/12/27.
//

import Alamofire

struct MeApi {
    func getMe() async throws -> Me {
        try await AF.request("https://api.github.com/users/idonuntius").publish(Me.self)
    }
}
