//
//  NotificationManager.swift
//  CalorieHut
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
    
    func pushNotification1(){
        
        let content = UNMutableNotificationContent()
        content.title = "Good Morning 😘"
        content.subtitle = "Let's have our breakfast"
        content.sound = .default
        content.badge = 1
        
        var dateC=DateComponents()
        
        dateC.hour = 10
        dateC.minute = 0
        
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateC, repeats: true)
        
        let requst = UNNotificationRequest(
            identifier: UUID().uuidString, content: content,trigger: trigger
        )
        UNUserNotificationCenter.current().add(requst)
    }
    
    func pushNotification2(){
        
        let content = UNMutableNotificationContent()
        content.title = "Time for launch !!"
        content.subtitle = "What are you going to eat? 😋"
        content.sound = .default
        content.badge = 1
        
        var dateC=DateComponents()
        
        dateC.hour = 15
        dateC.minute = 0
        
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateC, repeats: true)
        
        let requst = UNNotificationRequest(
            identifier: UUID().uuidString, content: content,trigger: trigger
        )
        UNUserNotificationCenter.current().add(requst)
    }
    
    func pushNotification3(){
        
        let content = UNMutableNotificationContent()
        content.title = "Good evening ❤️"
        content.subtitle = "Tip: Do not eat too much at night"
        content.sound = .default
        content.badge = 1
        
        var dateC=DateComponents()
        
        dateC.hour = 21
        dateC.minute = 0
        
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateC, repeats: true)
        
        let requst = UNNotificationRequest(
            identifier: UUID().uuidString, content: content,trigger: trigger
        )
        UNUserNotificationCenter.current().add(requst)
    }
    
    func pushNotification4(){
        
        let content = UNMutableNotificationContent()
        content.title = "Good night ❤️"
        content.subtitle = "Sweet Dreams 🌜"
        content.sound = .default
        content.badge = 1
        
        var dateC=DateComponents()
        
        dateC.hour = 23
        dateC.minute = 30
        
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateC, repeats: true)
        
        let requst = UNNotificationRequest(
            identifier: UUID().uuidString, content: content,trigger: trigger
        )
        UNUserNotificationCenter.current().add(requst)
    }
}
