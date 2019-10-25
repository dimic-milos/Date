//
//  DateHelperTests.swift
//  DateTests
//
//  Created by Dimic Milos on 9/14/19.
//  Copyright © 2019 Milos Dimic. All rights reserved.
//

import XCTest
@testable import Date

class DateHelperTests: XCTestCase {
    
    func test_getDayNameFrom_WhenDateIsSetToZeroTimeIntervalSince1970_ResultIsANotEqual() {
        let expectedResult = "Monday"
        let date = Date(timeIntervalSince1970: 0)
        XCTAssertNotEqual(expectedResult, DateHelper.getDayNameFrom(date: date))
    }
    
    func test_getDayNameFrom_WhenDateIsSetToZeroTimeIntervalSince1970_ResultIsAsExpected() {
        let expectedResult = "Thursday"
        let date = Date(timeIntervalSince1970: 0)
        XCTAssertEqual(expectedResult, DateHelper.getDayNameFrom(date: date))
    }
    
    func test_getDateFrom_WhenProperDateStringIsUsed_ResultIsAppropriateDateObject()  {
        let properDateString = "1983-10-29 23:05:00"
        XCTAssertNotNil(DateHelper.getDateFrom(yyyyMMddHHmmss: properDateString))
    }
    
    func test_getStringInFormat_ReturnsExpectedResult() {
        let expectedResult = "10-29 23"
        let date = DateHelper.getDateFrom(yyyyMMddHHmmss: "1983-10-29 23:05:00")
        let formattedDateAsMonthDayAndHour = DateHelper.getString(inFormat: .monthDayAndHour, fromDate: date)
        XCTAssertEqual(expectedResult, formattedDateAsMonthDayAndHour)
    }
    
    func test_getTimeInHoursBetween_WhenDateComparedIsTheSame_ReturnsExpectedResult() {
        let expectedResult = 0
        let date = Date()
        XCTAssertEqual(DateHelper.getNumberOfHoursBetween(earlier: date, latter: date), expectedResult)
    }
    
    func test_getNumberOfHoursBetween_WhenFirstDateIs3600SecondsInThePast_ReturnsExpectedResult() {
        let expectedResult = 1
        let dateFromThePast = Date.init(timeIntervalSinceNow: -3600)
        XCTAssertEqual(DateHelper.getNumberOfHoursBetween(earlier: dateFromThePast, latter: Date()), expectedResult)
    }
}
