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
}

