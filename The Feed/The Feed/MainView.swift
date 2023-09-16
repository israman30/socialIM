//
//  MainView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            NavigationView {
                List(0..<10) { item in
                    CardView()
                }
                .listStyle(.grouped)
                .navigationTitle("The Feed")
            }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


