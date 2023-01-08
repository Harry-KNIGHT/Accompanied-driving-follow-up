//
//  AddStartAndFinalDistanceForm.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct AddStartAndFinalDistanceForm: View {
	@Binding var firstCounterValue: Int?
	@Binding var secondCounterValue: Int?
	@EnvironmentObject var distanceVM: AddDistanceViewModel
	@Binding var showSheet: Bool
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .leading) {
				Text("Valeur initiale compteur ")
					.font(.title3)
				TextField("500", value: $firstCounterValue, format: .number)
					.font(.title3)
			}
			.accessibilityLabel("Valeur compteur en début de conduite")
			.padding(.vertical, 8)

			VStack(alignment: .leading) {
				Text("Valeur finale compteur")
					.font(.title3)
				TextField("700", value: $secondCounterValue, format: .number)
					.font(.title3)
			}
			.padding(.vertical, 8)
			.accessibilityLabel("Valeur compteur en fin de conduite")

			AddDistanceButton(
				counterStartKilometers: $firstCounterValue,
				counterEndKilometers: $secondCounterValue,
				showSheet: $showSheet
			)
			.padding(.top, 10)
		}
		.textFieldStyle(.roundedBorder)
		.keyboardType(.numberPad)
		.padding()
	}
}

struct AddStartAndFinalDistanceForm_Previews: PreviewProvider {
	static var previews: some View {
		AddStartAndFinalDistanceForm(
			firstCounterValue: .constant(123),
			secondCounterValue: .constant(nil),
			showSheet: .constant(false)
		)
		.environmentObject(AddDistanceViewModel())
	}
}
