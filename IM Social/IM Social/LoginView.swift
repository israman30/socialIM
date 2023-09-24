//
//  LoginView.swift
//  IM Social
//
//  Created by Israel Manzo on 9/23/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("IM Social")
                .font(.title)
                .padding()
            VStack {
                TextField("username", text: $email)
                    .padding()
                TextField("password", text: $password)
                    .padding()
            }
            .background(Color(.systemGray5))
            
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
