//
//  MessageViewModel.swift
//  IM Social
//
//  Created by Israel Manzo on 9/23/23.
//

import Foundation

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
