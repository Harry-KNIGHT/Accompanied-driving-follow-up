//
//  AddDistanceViewModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import Foundation

class AddDistanceViewModel: ObservableObject {
	@Published var distancesDone = Array<Distance>()

	func addCounterDistance(from firstValue: Int?, to finalValue: Int?)  {
		guard let firstValue = firstValue, let finalValue = finalValue else { return }

		let counterDistance = Distance(counterStartKilometers: firstValue, counterEndKilometers: finalValue, kilometers: nil, kilometerOrCounter: .counter)

		self.distancesDone.append(counterDistance)
	}

	func addDistance(kilometers: Double?) {
		guard let kilometers = kilometers else { return }

		let kilometerDistance = Distance(counterStartKilometers: nil, counterEndKilometers: nil, kilometers: kilometers, kilometerOrCounter: .distance)

		self.distancesDone.append(kilometerDistance)
	}
}

