//
//  AddDistanceViewModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import Foundation

class AddDistanceViewModel: ObservableObject {
	@Published var distancesDone = Array<Distance>()


	func addCounterDistance(from counterStartKilometers: Int?, to counterEndKilometers: Int?)  {
		guard let counterStartKilometers = counterStartKilometers,
			  let counterEndKilometers = counterEndKilometers
		else { return }

		let counterDistance = Distance(counterStartKilometers: counterStartKilometers, counterEndKilometers: counterEndKilometers)

		self.distancesDone.append(counterDistance)
	}

	func calculDistance() -> Int {

		let calculDistancesArray = distancesDone.map { ($0.counterEndKilometers ?? 0) - ($0.counterStartKilometers ?? 0) }

		return calculDistancesArray.reduce(0, +)
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

