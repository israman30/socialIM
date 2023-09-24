//
//  Message.swift
//  IM Social
//
//  Created by Israel Manzo on 9/23/23.
//

import Foundation

struct Message: Identifiable {
    let id = UUID().uuidString
    let sendeId = "abc"
    let recieverId = "xyz"
    let message: String
}
