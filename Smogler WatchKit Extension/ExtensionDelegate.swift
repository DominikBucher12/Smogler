//
//  ExtensionDelegate.swift
//  Smogler WatchKit Extension
//
//  Created by Vasarhelyi Agnes on 2017. 02. 19..
//  Copyright © 2017. vasarhelyia. All rights reserved.
//

import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
		scheduleBackgroundTask()
	}

	func handle(_ backgroundTasks: Set<WKRefreshBackgroundTask>) {
		for task : WKRefreshBackgroundTask in backgroundTasks {
			if (WKExtension.shared().applicationState == .background) {
				if task is WKApplicationRefreshBackgroundTask {
					APIService.sharedInstance.fetchAQI()
					scheduleBackgroundTask()
				}
			}
			task.setTaskCompletedWithSnapshot(false)
		}
	}

	func scheduleBackgroundTask() {
		let fireDate = Date(timeIntervalSinceNow: 60 * 30)
		WKExtension.shared().scheduleBackgroundRefresh(withPreferredDate: fireDate, userInfo: nil) { (error) in
      
      if let e = error {
        print("error scheduling background task: \(e.localizedDescription)")
      } else {
        print("successfully scheduled background task")
      }
    }
  }
}
