//
//  MePage.swift
//  swift_concurrency_starter
//
//  Created by 井戸田捺貴 on 2021/12/27.
//

import SwiftUI

@MainActor
struct MePage: View {
    @StateObject private var state: MeViewModel
    
    init() {
        self._state = .init(wrappedValue: MeViewModel())
    }
    
    var body: some View {
        if let me = state.me {
            VStack(spacing: 16) {
                Text(me.name)
                Spacer()
                
                Text(me.avatarUrl)
                Spacer()
            }
        } else {
            ProgressView()
                .task {
                    await state.getMe()
                }
        }
    }
}

struct MePage_Previews: PreviewProvider {
    static var previews: some View {
        MePage()
    }
}
