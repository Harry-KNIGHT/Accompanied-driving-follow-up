//
//  DistanceModel.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct Distance: Identifiable {
	var id = UUID()
	let counterStartKilometers: Double?
	let counterEndKilometers: Double?
	let kilometers: Double?
	let kilometerOrCounter: KilometerOrCounter
}

enum KilometerOrCounter: CaseIterable {
	case counter, distance

	var kmOrCounter: String {
		switch self {
		case .counter:
			return "Compteur"
		case .distance:
			return "Distance"
		}
	}
}

extension Distance {
	static let distanceSample = Distance(counterStartKilometers: 1_300, counterEndKilometers: 1_400, kilometers: nil, kilometerOrCounter: .counter)
}
