//
//  NotificationManager.swift
//  CaloriesHub
//
//  Created by Youssif Hany on 20/04/2022.
//

import Foundation
import UserNotifications


class NotificationManager{
    
   static let instance = NotificationManager()
   
    func requestAuthorization(){
        let options : UNAuthorizationOptions = [.alert,.sound,.badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options){(success,error) in
            if let error = error{
                print("Notification error: \(error)")
            }else{
                print("Notification success")
            }
        }
    }
    
    func pushNotification(){
        
        //MARK: Notification 1
        let content1 = UNMutableNotificationContent()
        content1.title = "Good Morning 😘"
        content1.subtitle = "Let's have our breakfast"
        content1.sound = .default
        content1.badge = 1
        
        var dateC1=DateComponents()
        
        dateC1.hour = 10
        dateC1.minute = 0
        
        
        let trigger1 = UNCalendarNotificationTrigger(dateMatching: dateC1, repeats: true)
        
        let requst1 = UNNotificationRequest(
            identifier: UUID().uuidString, content: content1,trigger: trigger1
        )
        UNUserNotificationCenter.current().add(requst1)
        
        //MARK: Notification 2
        let content2 = UNMutableNotificationContent()
        content2.title = "Time for launch !!"
        content2.subtitle = "What are you going to eat? 😋"
        content2.sound = .default
        content2.badge = 1
        
        var dateC2=DateComponents()
        
        dateC2.hour = 15
        dateC2.minute = 0
        
        
        let trigger2 = UNCalendarNotificationTrigger(dateMatching: dateC2, repeats: true)
        
        let requst2 = UNNotificationRequest(
            identifier: UUID().uuidString, content: content2,trigger: trigger2
        )
        UNUserNotificationCenter.current().add(requst2)
        
        //MARK: Notification 3
        let content3 = UNMutableNotificationContent()
        content3.title = "Good evening ❤️"
        content3.subtitle = "Tip: Do not eat too much at night"
        content3.sound = .default
        content3.badge = 1
        
        var dateC3=DateComponents()
        
        dateC3.hour = 21
        dateC3.minute = 0
        
        
        let trigger3 = UNCalendarNotificationTrigger(dateMatching: dateC3, repeats: true)
        
        let requst3 = UNNotificationRequest(
            identifier: UUID().uuidString, content: content3,trigger: trigger3
        )
        UNUserNotificationCenter.current().add(requst3)
        
        //MARK: Notification 4
        let content4 = UNMutableNotificationContent()
        content4.title = "Good night ❤️"
        content4.subtitle = "Sweet Dreams 🌜"
        content4.sound = .default
        content4.badge = 1
        
        var dateC4=DateComponents()
        
        dateC4.hour = 23
        dateC4.minute = 30
        
        
        let trigger4 = UNCalendarNotificationTrigger(dateMatching: dateC4, repeats: true)
        
        let requst4 = UNNotificationRequest(
            identifier: UUID().uuidString, content: content4,trigger: trigger4
        )
        UNUserNotificationCenter.current().add(requst4)
    }
}
