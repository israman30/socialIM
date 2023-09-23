//
//  MainView.swift
//  IM Social
//
//  Created by Israel Manzo on 9/22/23.
//

import SwiftUI

struct MainView: View {
    
    @State var inputText = ""
    @State var messages = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(messages, id: \.self) { item in
                        Text("\(item)")
                    }
                }
                TextField("Say something..", text: $inputText)
                    .padding()
                    
            }
            .navigationTitle("IM Social")
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
