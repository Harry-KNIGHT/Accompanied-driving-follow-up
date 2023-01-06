//
//  DistanceModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct Distance: Identifiable {
	var id = UUID()
	let counterStartKilometers: Int?
	let counterEndKilometers: Int?
}

extension Distance {
	static let distanceSample = Distance(counterStartKilometers: 1_300, counterEndKilometers: 1_400)
}
