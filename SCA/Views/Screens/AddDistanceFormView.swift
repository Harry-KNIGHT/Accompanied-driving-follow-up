//
//  AddDistanceFormView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct AddDistanceFormView: View {
	@State private var kilometerOrCounter: KilometerOrCounter = .counter
	@State private var firstCounterValue = ""
	@State private var secondCounterValue = ""
	@State private var distanceInKm = ""
	var body: some View {
		NavigationView {
			VStack {
				KilometerOrCounterPickerView(kilometerOrCounter: $kilometerOrCounter)
				switch kilometerOrCounter {
				case .counter:
					AddStartAndFinalDistanceForm(firstCounterValue: $firstCounterValue, secondCounterValue: $secondCounterValue)
				case .distance:
					TotalDistanceForm(distanceInKm: $distanceInKm)
				}
				Spacer()
			}
			.navigationTitle("Ajouter une distance")
			.navigationBarTitleDisplayMode(.inline)
		}
	}

}

struct AddDistanceFormView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			AddDistanceFormView()
		}
	}
}
