//
//  MeViewModel.swift
//  swift_concurrency_starter
//
//  Created by 井戸田捺貴 on 2021/12/27.
//

import Foundation

final class MeViewModel: ObservableObject {
    private let meApi = MeApi()
    
    @Published private(set) var me: Me?
    
    func getMe() async {
        do {
            self.me = try await meApi.getMe()
        } catch {
            print(error);
        }
    }
}
