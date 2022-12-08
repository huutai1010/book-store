//
//  AppDelegate.swift
//  book-store
//
//  Created by maihuutai on 22/11/2022.
//

import Foundation
import UIKit
import UserNotifications
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    print("Starting... Book Store")

    AppCenter.start(withAppSecret: "3cd63a8a-e341-4732-82ff-6e4e1978d271", services:[
      Analytics.self,
      Crashes.self
    ])

    AppCenter.start(withAppSecret: "3cd63a8a-e341-4732-82ff-6e4e1978d271", services:[
      Analytics.self,
      Crashes.self
    ])
    // Set up notification type
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound, .criticalAlert]) { success, error in
      if success {
        print("All set!")
      } else if let error = error {
        print(error.localizedDescription)
      }
    }

    // Set up notification content
    setNotificationContent()
    return true
  }


  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    return UISceneConfiguration(name: "Default configuration", sessionRole: connectingSceneSession.role)
  }


  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    print("Finishing... Book Store")
  }

  func setConfigurationForMapping() {
    
  }

  func setNotificationContent() {
    let content = UNMutableNotificationContent()
    content.title = "Welcome book store"
    content.categoryIdentifier = "welcomeMyApp"
    content.subtitle = "Welcome to home screen"
    content.body = "Welcome to bookstore app ,let's buy your new book now"
    content.userInfo = ["myKey": "myValue"] as [String : String] // test userInfo
    content.badge = 1
    content.sound = UNNotificationSound.default
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    UNUserNotificationCenter.current().add(request)
  }
}
