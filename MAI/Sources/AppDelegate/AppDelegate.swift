//
//  AppDelegate.swift
//  MAI
//
//  Created by Решетников Святослав on 25/10/2019.
//  Copyright © 2019 Tribuna Digital. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        DIContainer.configure()

        window = UIWindow(frame: UIScreen.main.bounds).with {
            $0.makeKeyAndVisible()
        }

        let newsFeed = NewsFeedBuilder.build()
        window?.rootViewController = newsFeed

        return true
    }

}
