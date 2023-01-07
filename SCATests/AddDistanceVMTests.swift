//
//  AddDistanceVMTests.swift
//  SCATests
//
//  Created by Elliot Knight on 07/01/2023.
//

import XCTest
@testable import SCA

final class AddDistanceVMTests: XCTestCase {
	var sut: AddDistanceViewModel!
    override func setUpWithError() throws {
        sut = AddDistanceViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

	func test_addDistance() throws {
		let data: Distance = .distanceSample

		let _ = sut.addCounterDistance(from: data.counterStartKilometers, to: data.counterEndKilometers)

		XCTAssertEqual(sut.distancesDone.count, 1)
		XCTAssertFalse(sut.distancesDone.isEmpty)
	}

	func test_caclulSessionDistance() throws {
		let data: Distance = .distanceSample

		let _ = sut.calculSessionDistance(from: data.counterStartKilometers, to: data.counterEndKilometers)

		XCTAssertEqual(sut.distanceDone, 100)
		XCTAssertNotEqual(sut.distanceDone, -100)
	}

	func test_isTextEmpty() throws {
		let firstEmptyEntry = ""
		let lastEmptyEntry = ""

		let firstFilledEntry = "1300"
		let secondFilledEntry = "1400"


		let emptyString = sut.isTextFieldsEmpty(firstEmptyEntry, lastEmptyEntry)
		let filledString = sut.isTextFieldsEmpty(firstFilledEntry, secondFilledEntry)

		XCTAssertEqual(emptyString, true)
		XCTAssertEqual(filledString, false)
	}

	func test_isEntryIsUpperZero() throws {
		let data: Distance = .distanceSample

		let entryIsUpper = try? sut.isDistanceIsUpperZero(from: data.counterEndKilometers, to: data.counterStartKilometers)
		let entryIsLesser = try? sut.isDistanceIsUpperZero(from: data.counterStartKilometers, to: data.counterEndKilometers)

		XCTAssertEqual(entryIsUpper, true)
		XCTAssertEqual(entryIsLesser, false)
	}
}
