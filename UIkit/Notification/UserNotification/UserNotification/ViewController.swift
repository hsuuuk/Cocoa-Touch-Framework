//
//  ViewController.swift
//  UserNotification
//
//  Created by 심현석 on 2023/03/10.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    
    @IBOutlet weak var notiButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func notiAction(_ sender: Any) {
        // 알림 발생
        let content = UNMutableNotificationContent()
        content.title = "알림"
        content.body = "성공했습니다"
        content.sound = UNNotificationSound.default
        
        // TimeIntervalNotification
        let trigger1 = UNTimeIntervalNotificationTrigger(timeInterval: 0.1, repeats: false)
        
        // CalendarNotification
        var components = DateComponents()
        components.hour = 9
        components.minute = 37
        components.second = 0
        let trigger2 = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
        
        let request = UNNotificationRequest(identifier: "testNotification", content: content, trigger: trigger1)
        
        UNUserNotificationCenter.current().add(request) { error in
            print("알림 예약 성공")
        }
    }
}


