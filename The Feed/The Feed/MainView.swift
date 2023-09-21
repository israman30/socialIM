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
                        HStack(alignment: .center) {
                            Image(systemName: "pencil.tip.crop.circle.badge.arrow.forward")
                                .resizable()
                                .frame(width: 30, height: 25)
                            Text("What's new..")
                                .padding(.vertical, 10)
                                .font(.title3)
                        }
                        .foregroundColor(.gray)
                        .frame(width: .infinity)
                        
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


