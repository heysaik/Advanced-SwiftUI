//
//  Advanced_SwiftUIApp.swift
//  Advanced SwiftUI
//
//  Created by Sai Kambampati on 3/22/21.
//

import SwiftUI
import Firebase
import Purchases

@main
struct Advanced_SwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
        Purchases.configure(withAPIKey: "YrBMLTUqlQKKcnYAtAYqssNGbNPFHxMI")
    }
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SignupView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
