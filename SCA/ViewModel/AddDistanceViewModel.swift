//
//  AddDistanceViewModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import Foundation

class AddDistanceViewModel: ObservableObject {
	var distancesDone = Array<Distance>()

	private var distanceCalculed = [Int]()

	@Published var distanceDone: Int = 0

	func addCounterDistance(from counterStartKilometers: Int?, to counterEndKilometers: Int?)  {
		guard let counterStartKilometers = counterStartKilometers,
			  let counterEndKilometers = counterEndKilometers
		else { return }

		let counterDistance = Distance(counterStartKilometers: counterStartKilometers, counterEndKilometers: counterEndKilometers)

		self.distancesDone.append(counterDistance)
	}
	
	func calculSessionDistance(from counterStartKilometers: Int?, to counterEndKilometers: Int?) {
		guard let counterStartKilometers = counterStartKilometers,
			  let counterEndKilometers = counterEndKilometers
		else { return }
		
		var calculDistanceDone = (counterEndKilometers - counterStartKilometers)
		if calculDistanceDone < 0 { calculDistanceDone = 0 }
		self.distanceCalculed.append(calculDistanceDone)

		distanceDone = self.distanceCalculed.reduce(0, +)
	}

	func isTextFieldsEmpty(_ counterStartKilometers: String,_ counterEndKilometers: String) -> Bool {
		if counterEndKilometers != "", counterStartKilometers != "" {
			return false
		}
		return true
	}

	func isDistanceIsUpperZero(from counterStartKilometers: Int?, to counterEndKilometers: Int?) throws -> Bool {
		guard let counterStartKilometers = counterStartKilometers,
			  let counterEndKilometers = counterEndKilometers
		else { throw DistanceError.noDistances }

		if ((counterEndKilometers - counterStartKilometers) < 0) {
			return true
		}
		return false
	}

	enum DistanceError: Error {
		case noDistances
	}
}

