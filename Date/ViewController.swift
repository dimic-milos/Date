//
//  ViewController.swift
//  Date
//
//  Created by Milos Dimic on 1/13/19.
//  Copyright © 2019 Milos Dimic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let date = DateHelper.getDateFrom(yyyyMMddHHmmss: "1983-10-29 23:05:00")
        print(date)
        
        // 2.1
        let dayName = DateHelper.getDayNameFrom(date: date)
        print(dayName)
        // 2.2
        let dayNameInSpecificLocale = DateHelper.getDayNameFrom(date: date, inLocale: "sr")
        print(dayNameInSpecificLocale)
        
        // 3.1
        let formattedDateAsMonthDayAndHour = DateHelper.getString(inFormat: .monthDayAndHour, fromDate: date)
        print(formattedDateAsMonthDayAndHour)
        // 3.2
        let formattedDateAsJustTime = DateHelper.getString(inFormat: .justTime, fromDate: date)
        print(formattedDateAsJustTime)
    }


}

