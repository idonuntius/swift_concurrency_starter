//
//  ContentView.swift
//  swift_concurrency_starter
//
//  Created by 井戸田捺貴 on 2021/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    MePage()
                } label: {
                    Text("MePage")
                }
            }
        }.navigationTitle("TOP")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
