//
//  InputView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/19/23.
//

import SwiftUI

struct InputView: View {
    
    @State var inputDetailText = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Text("Think on something!")
                    .foregroundColor(.gray)
                Spacer()
                Button {
                    self.dismiss()
                } label: {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(Color(.label))
                        .font(.title3)
                }

            }
            
            ZStack(alignment: .leading) {
                TextEditor(text: $inputDetailText)
                VStack {
                    Text("What's new...")
                        .font(.title)
                    Spacer()
                }
                
            }
            
        }
        .padding()
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
