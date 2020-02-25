//
//  ViewController.swift
//  Test_Notification
//
//  Created by Khoa Nguyen on 2/24/20.
//  Copyright © 2020 Khoa Nguyen. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let content = UNMutableNotificationContent()
        content.title = "Local Notification"
        content.body = "This is my first notification"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "testIdentifier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}

