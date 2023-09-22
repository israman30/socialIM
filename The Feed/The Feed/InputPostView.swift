//
//  InputPostView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/21/23.
//

import SwiftUI

struct InputPostView: View {
    
    @Binding var inputTitle: String
    @Binding var contentTitle: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Let's see..")
                TextField("What is new..", text: $inputTitle)
                    .font(.title)
                
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "camera")
                    }

                    Button {
                        //
                    } label: {
                        Image(systemName: "photo")
                    }
                }
                .buttonStyle(.bordered)
                
                TextEditor(text: $contentTitle)
                    .background(Color.yellow)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct InputPostView_Previews: PreviewProvider {
    static var inputTitle = ""
    static var contentTitle = ""
    static var previews: some View {
        InputPostView(inputTitle: .constant(inputTitle), contentTitle: .constant(contentTitle))
    }
}
