//
//  AddDistanceViewModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import Foundation

class AddDistanceViewModel: ObservableObject {
	@Published var distancesDone: Array<Distance>

	init() {
		if let data = UserDefaults.standard.data(forKey: "SavedDistance") {
			if let decoded = try? JSONDecoder().decode([Distance].self, from: data) {
				distancesDone = decoded
				return
			}
		}
		distancesDone = []
	}

	func saveDistances() {
		if let encoded = try? JSONEncoder().encode(distancesDone) {
			UserDefaults.standard.set(encoded, forKey: "SavedDistance")
		}
	}

	func addCounterDistance(from counterStartKilometers: Int?, to counterEndKilometers: Int?)  {
		guard let counterStartKilometers = counterStartKilometers,
			  let counterEndKilometers = counterEndKilometers
		else { return }

		let counterDistance = Distance(counterStartKilometers: counterStartKilometers, counterEndKilometers: counterEndKilometers)

		self.distancesDone.append(counterDistance)
		saveDistances()
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

