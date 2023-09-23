//
//  DataController.swift
//  IM Social
//
//  Created by Israel Manzo on 9/22/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "IM_Social")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load Core Date: \(error.localizedDescription)")
            }
        }
    }
}
