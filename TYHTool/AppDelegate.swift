//
//  AppDelegate.swift
//  TYHTool
//
//  Created by YaoHua Tan on 2019/10/23.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//         if #available(iOS 13, *) {
//           }else {
        window = UIWindow.init()
        window?.frame = UIScreen.main.bounds
               
        let nav: UINavigationController = UINavigationController.init(rootViewController: ViewController.init())
        nav.navigationBar.backgroundColor = .gray
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
//           }
        return true
    }

    // MARK: UISceneSession Lifecycleii

//    @available(iOS 13.0, *)
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }

//    @available(iOS 13.0, *)
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this methodv to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

