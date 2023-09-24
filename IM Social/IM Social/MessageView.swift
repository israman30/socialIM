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
        VStack(alignment: .leading) {
            Text("07/12/2023")
                .font(.caption)
                .padding(.horizontal, 5)
            Text("\(object.message)")
                .padding()
                .font(.title3)
                .fontWeight(.medium)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
        
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(object: Message(message: "Hello world amigos"))
    }
}
