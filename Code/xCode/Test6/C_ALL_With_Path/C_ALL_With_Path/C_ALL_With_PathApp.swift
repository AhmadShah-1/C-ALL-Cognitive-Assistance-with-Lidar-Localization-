//  CreatingLidarModelApp.swift
//  CreatingLidarModel
//
//  Created by SSW - Design Team  on 11/14/24.
//

import SwiftUI
import SwiftData
import ARKit

@main
struct C_ALL_With_PathApp: App {
    @UIApplicationDelegateAdaptor(AppdDelegate.self) var appDelegate
    
    // Maybe Remove
    /*
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
     
     

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
    */
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppdDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        if !ARWorldTrackingConfiguration.supportsFrameSemantics(.sceneDepth){
            print("does not support AR")
        }
        return true
    }
}