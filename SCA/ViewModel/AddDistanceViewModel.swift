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

	func isEndDistanceIsUpperThanStartCounter(distance: Distance) -> Bool {
		guard let counterStartKilometers = distance.counterStartKilometers,
			  let counterEndKilometers = distance.counterEndKilometers
		else { return true }

		guard (counterEndKilometers != counterStartKilometers) else { return true }

		return  (counterEndKilometers < counterStartKilometers)
	}
}

