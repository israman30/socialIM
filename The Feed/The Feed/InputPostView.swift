//
//  InputPostView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/21/23.
//

import SwiftUI

struct InputPostView: View {
    
    @State var inputTitle = ""
    @State var contentTitle = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Let's see..")
                    Spacer()
                    Button {
                        self.dismiss()
                    } label: {
                        Image(systemName: "xmark.circle")
                            .tint(Color(.label))
                    }
                }
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
    static var previews: some View {
        InputPostView()
    }
}
