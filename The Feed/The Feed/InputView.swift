//
//  InputView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/19/23.
//

import SwiftUI

struct InputView: View {
    
    @State var inputDetailText = ""
    @State var inputTitle = ""
    @StateObject var user = MockFeedManager()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    self.dismiss()
                } label: {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(Color(.label))
                        .font(.title3)
                }

            }
            TextField("Input a title here...", text: $inputTitle)
                .font(.title)
                .padding(.vertical)
            
            HStack {
                Spacer()
                Button {
                    // Open photo library
                } label: {
                    Image(systemName: "photo")
                        .foregroundColor(Color(.label))
                }
                .buttonStyle(.bordered)
                
                Button {
                    // Open camera
                } label: {
                    Image(systemName: "camera")
                        .foregroundColor(Color(.label))
                }
                .buttonStyle(.bordered)
                Spacer()
            }
            
            ZStack(alignment: .leading) {
                TextEditor(text: $inputDetailText)
                VStack {
                    Text("What's new...")
                        .font(.title2)
                    Spacer()
                }
                
            }
            .padding(.vertical)
            Button {
                // Post
            } label: {
                Text("Post")
                    .font(.title)
            }
            .buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
