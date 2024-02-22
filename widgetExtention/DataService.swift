//
//  DataService.swift
//  widgetExtentionExtension
//
//  Created by Youssif Hany on 22/02/2024.
//

import Foundation
import SwiftUI

struct DataService{
    @AppStorage("progressAppStorge",
    store: UserDefaults(suiteName: "group.com.youssif.calorieshub")) private var progressAppStorge = ""
    func progress()->String{
        return progressAppStorge
    }
}
