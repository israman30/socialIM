//
//  MockFeedManager.swift
//  The Feed
//
//  Created by Israel Manzo on 9/15/23.
//

import UIKit

struct MockUser: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String
    let content: String
    let date: String
}

class MockFeedManager: ObservableObject {
    
    @Published var mockUser: [MockUser] = []
    
    init() {
        getMockUser()
    }
    
    func getMockUser() {
        mockUser.append(contentsOf: [
            MockUser(image: "goku", name: "Kakaroto", content: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", date: "12/23/2023"),
            MockUser(image: "vegeta",name: "Vegeta, Prince of Sayajin", content: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t.", date: "12/23/2023"),
            MockUser(image: "freza",name: "Freza", content: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book printing and typesetting industry.", date: "12/23/2023"),
            MockUser(image: "", name: "Freza", content: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, make a type specimen book printing and typesetting industry.", date: "12/23/2023"),
            MockUser(image: "cell", name: "Cell", content: "is simply dummy text of thed it to make a type specimen book.", date: "12/23/2023"),
            MockUser(image: "boo2", name: "Fat and Skinny Boo", content: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", date: "12/23/2023"),
            MockUser(image: "broly",name: "Broly", content: "is simply dummy been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", date: "12/23/2023")
        ])
        
    }
}
