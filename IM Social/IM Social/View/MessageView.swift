//
//  MessageView.swift
//  IM Social
//
//  Created by Israel Manzo on 9/22/23.
//

import SwiftUI

struct MessageView: View {
    
    var object: Message
    
    var body: some View {
        if object.sendeId == "abc" {
            HStack {
                Spacer()
                MessageBubbleView(item: object, color: Color.blue, alignment: .trailing)
            }
            .padding()
            
        } else {
            HStack {
                MessageBubbleView(item: object, color: Color(.systemGray2), alignment: .leading)
                Spacer()
            }
            .padding()
            
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(object: Message(message: "Hello world amigos"))
    }
}

struct MessageBubbleView: View {
    var item: Message
    var color: Color
    var alignment: HorizontalAlignment
    var body: some View {
        VStack(alignment: alignment) {
            Text("07/12/2023")
                .font(.caption)
                .padding(.horizontal, 5)
            Text("\(item.message)")
                .padding()
                .font(.title3)
                .fontWeight(.medium)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
    }
}
