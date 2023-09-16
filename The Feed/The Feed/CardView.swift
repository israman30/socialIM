//
//  CardView.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading) {
                Text("Card View")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text("Card View")
                    .font(.title)
                    .foregroundColor(.primary)
                    .fontWeight(.bold)
                Text("Card View")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .cornerRadius(10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0), lineWidth: 1)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
