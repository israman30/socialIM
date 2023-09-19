//
//  CardView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import SwiftUI

struct CardView: View {
    
    var user: MockUser
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .strokeBorder(.gray, lineWidth: 1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.white)
                .shadow(color: .gray, radius: 5, x:  0, y: 5)
            
            
            VStack {
                Image(uiImage: user.image)
                    .resizable()
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.title)
                        .foregroundColor(.primary)
                        .fontWeight(.bold)
                    Text(user.content)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    HStack {
                        Spacer()
                        Text(user.date)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(.vertical, 5)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
            }
        }
//        .cornerRadius(10)
//        .overlay {
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0), lineWidth: 1)
//        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: MockUser(image: UIImage(named: "goku")!, name: "Kakaroto", content: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", date: "10/10/2002"))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
}
