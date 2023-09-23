//
//  IM_SocialApp.swift
//  IM Social
//
//  Created by Israel Manzo on 9/22/23.
//

import SwiftUI

@main
struct IM_SocialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
