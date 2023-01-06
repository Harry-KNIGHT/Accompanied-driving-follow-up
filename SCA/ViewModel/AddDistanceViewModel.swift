//
//  AddDistanceViewModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import Foundation

class AddDistanceViewModel: ObservableObject {
	private var distancesDone = Array<Distance>()

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
		
		let calculDistanceDone = (counterEndKilometers - counterStartKilometers)
		
		self.distanceCalculed.append(calculDistanceDone)

		distanceDone = self.distanceCalculed.reduce(0, +)

	}
}

