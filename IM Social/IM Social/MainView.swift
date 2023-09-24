//
//  MainView.swift
//  IM Social
//
//  Created by Israel Manzo on 9/22/23.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID().uuidString
    let sendeId = "abc"
    let recieverId = "xyz"
    let message: String
}

class MessageViewModel: ObservableObject {
    
    @Published var messages = [Message]()
    @Published var inputText = ""
    @Published var isLogin = false
    
    func addNewMessage(object: Message) {
        guard !inputText.isEmpty else { return }
        messages.append(object)
        inputText = ""
    }
}

struct MainView: View {
    
    @State var inputText = ""
    @State var messages = ["test 1", "test 2"]
    @StateObject var vm = MessageViewModel()
    
    var body: some View {
        NavigationView {
            if !vm.isLogin {
                VStack {
                    List {
                        ForEach(vm.messages) { object in
                            MessageView(object: object)
                        }
                    }
                    .listStyle(.grouped)
                    
                    HStack {
                        TextField("Say something..", text: $vm.inputText)
                            .padding()
                        
                        Button {
                            self.addNewMessage(message: vm.inputText)
                        } label: {
                            Image(systemName: "arrow.uturn.backward")
                                .padding()
                        }
                        .buttonStyle(.bordered)
                        
                    }
                }
                .navigationTitle("IM Social")
            } else {
                LoginView()
            }
        }
    }
    
    private func addNewMessage(message: String) {
        let newMessage = Message(message: message)
        vm.addNewMessage(object: newMessage)
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

