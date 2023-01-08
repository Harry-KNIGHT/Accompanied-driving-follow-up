//
//  AddDistanceButton.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct AddDistanceButton: View {
	@EnvironmentObject var distanceVM: AddDistanceViewModel

	@Binding var counterStartKilometers: Int?
	@Binding var counterEndKilometers: Int?

	@Binding var showSheet: Bool
	var body: some View {
		Button(action: {
			distanceVM.addCounterDistance(from: counterStartKilometers, to: counterEndKilometers)
			showSheet = false
		}, label: {
			HStack {
				Image(systemName: "plus.app.fill")
					.font(.title3)
				Text("Ajouter")
			}
		})
		.accessibilityLabel("Ajouter distance")
		.buttonStyle(.borderedProminent)
		.disabled(
			distanceVM.isEndDistanceIsUpperThanStartCounter(
				distance:
					Distance(
						counterStartKilometers: counterStartKilometers,
						counterEndKilometers: counterEndKilometers)
			)
		)
	}
}

struct AddDistanceButton_Previews: PreviewProvider {
	static var previews: some View {
		AddDistanceButton(
			counterStartKilometers: .constant(0),
			counterEndKilometers: .constant(0),
			showSheet: .constant(true)
		)
		.environmentObject(AddDistanceViewModel())
		.previewLayout(.sizeThatFits)
	}
}
