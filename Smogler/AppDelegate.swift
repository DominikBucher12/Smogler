//
//  AppDelegate.swift
//  Smogler
//
//  Created by Vasarhelyi Agnes on 2017. 02. 19..
//  Copyright © 2017. vasarhelyia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        session?.delegate = self
        session?.activate()

        UIApplication.shared.setMinimumBackgroundFetchInterval(Constants.minBackgroundFetchInterval)
        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        APIService.shared.fetchAQI()
    }

    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        APIService.shared.fetchAQI()
        // TODO: completionHandler(.newData)?
    }
}

