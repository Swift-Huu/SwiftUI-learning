//
//  AppDelegate.swift
//  Session-2
//
//  Created by 胡智林 on 2019/12/2.
//  Copyright © 2019 胡智林. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let stru1 = Stru1L(id: 100)
        let each = ForEachT<Int>(stru1, id: \.id)
        print(each)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
struct Stru1L: Hashable, Codable, Identifiable {
    var id: Int
}
public struct ForEachT<ID> where  ID : Hashable {

    /// The collection of underlying identified data.
//    public var id: ID

    /// A function that can be used to generate content on demand given
    /// underlying data.
    var id: KeyPath<Stru1L, ID>?
     init<ID>(_ data: Stru1L, id: KeyPath<Stru1L, ID>) {
        print(data, id)
//        self.id = id
    }
    
}
