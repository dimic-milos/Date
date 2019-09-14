//
//  DateHelper.swift
//  Date
//
//  Created by Milos Dimic on 1/13/19.
//  Copyright © 2019 Milos Dimic. All rights reserved.
//

import os
import Foundation

struct DateHelper {
    
    enum DateFormat: String {
        case completeDateWithTime = "yyyy-MM-dd HH:mm:ss"
        case justDate = "yyyy-MM-dd"
        case justTime = "HH:mm:ss"
        case hour = "HH"
        case monthDayAndHour = "MM-dd HH"
    }
    
    static func getDayNameFrom(date: Date, inLocale localeIdentifier: String? = nil) -> String {
        let dateFormatter  = DateFormatter()
        if let localeIdentifier = localeIdentifier {
            dateFormatter.locale = Locale(identifier: localeIdentifier)
        }
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: date)
    }
    
    static func getDateFrom(yyyyMMddHHmmss stringDate: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = dateFormatter.date(from: stringDate)!
        return date
    }
    
    static func getString(inFormat dateFormat: DateFormat, fromDate date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat.rawValue
        let formattedDate = dateFormatter.string(from: date)
        return formattedDate
    }
}
