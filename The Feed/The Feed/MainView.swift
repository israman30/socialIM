//
//  MainView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var mu = MockFeedManager()
    
    var body: some View {
        VStack {
            NavigationView {
                List(mu.mockUser) { user in
                    CardView(user: user)
                        .padding(.horizontal, -10)
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


