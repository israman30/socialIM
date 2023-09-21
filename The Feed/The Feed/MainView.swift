//
//  MainView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var mu = MockFeedManager()
    @State private var openPostView = false
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    HStack {
                        Image(systemName: "pencil.tip.crop.circle.badge.arrow.forward")
                            .font(.title)
                            .padding(.trailing)
                        Text("What's new...")
                    }
                    .padding(.vertical)
                    .font(.title2)
                    .foregroundColor(.gray)
                    .onTapGesture {
                        self.openPostView.toggle()
                    }
                    .sheet(isPresented: $openPostView) {
                        EmptyView()
                    }
                    
                    ForEach(mu.mockUser) { post in
                        CardView(user: post)
                            .padding(.horizontal, -10)
                    }
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


