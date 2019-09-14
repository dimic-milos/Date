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
        let expectedResult = "Thursday"
        let date = Date(timeIntervalSince1970: 0)
        XCTAssertNotEqual(expectedResult, DateHelper.getDayNameFrom(date: date))
    }
    
    func test_getDayNameFrom_WhenDateIsSetToZeroTimeIntervalSince1970_ResultIsAsExpected() {
        let expectedResult = "Thursday"
        let date = Date(timeIntervalSince1970: 0)
        XCTAssertEqual(expectedResult, DateHelper.getDayNameFrom(date: date))
    }
}
