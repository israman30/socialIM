//
//  MainView.swift
//  IM Social
//
//  Created by Israel Manzo on 9/22/23.
//

import SwiftUI

struct MainView: View {
    
    @State var inputText = ""
    @State var messages = ["test 1", "test 2"]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(messages, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .font(.title3)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                }
                .listStyle(.grouped)
                HStack {
                    TextField("Say something..", text: $inputText)
                        .padding()
                    
                    Button {
                        // send
                        self.addNewMessage(message: inputText)
                    } label: {
                        Image(systemName: "arrow.uturn.backward")
                            .padding()
                    }
                    .buttonStyle(.bordered)

                }
            }
            .navigationTitle("IM Social")
        }
    }
    
    func addNewMessage(message: String) {
        messages.append(message)
        inputText = ""
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
