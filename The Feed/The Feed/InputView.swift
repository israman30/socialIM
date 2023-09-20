//
//  InputView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/19/23.
//

import SwiftUI

struct InputView: View {
    
    @State var inputDetailText = ""
    
    var body: some View {
        VStack {
            Text("Think on something!")
                .foregroundColor(.gray)
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
