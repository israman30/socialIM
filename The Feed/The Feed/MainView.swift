//
//  MainView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var mu = MockFeedManager()
    @State var inputSection = false
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    List {
                        Text("What's new..")
                            .foregroundColor(.gray)
                            .font(.title3)
                            .padding(.vertical, 10)
                            .onTapGesture {
                                self.inputSection.toggle()
                            }
                            .sheet(isPresented: $inputSection) {
                                InputView()
                            }
                        
                        ForEach(mu.mockUser) { user in
                            CardView(user: user)
                                .padding(.horizontal, -10)
                        }
                        
                    }
                    .listStyle(.grouped)
                    .navigationTitle("The Feed")
                }
                
            }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


