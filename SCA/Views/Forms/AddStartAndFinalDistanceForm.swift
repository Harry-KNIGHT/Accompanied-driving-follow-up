//
//  AddStartAndFinalDistanceForm.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct AddStartAndFinalDistanceForm: View {
	@Binding var firstCounterValue: String
	@Binding var secondCounterValue: String
	@EnvironmentObject var distanceVM: AddDistanceViewModel
    var body: some View {
		Form {
			Section(header: Text("Distance début")) {
				TextField("1333", text: $firstCounterValue)
			}
			Section(header: Text("Distance fin")) {
				TextField("1333", text: $secondCounterValue)

			}
		}
		.keyboardType(.numberPad)

		.toolbar {
			ToolbarItemGroup(placement: .keyboard) {
					Spacer()
				AddDistanceButton(
					counterStartKilometers: $firstCounterValue,
					counterEndKilometers: $secondCounterValue
				)
				.disabled(distanceVM.isTextFieldsEmpty(firstCounterValue, secondCounterValue))
			}
		}
    }
}

struct AddStartAndFinalDistanceForm_Previews: PreviewProvider {
    static var previews: some View {
		AddStartAndFinalDistanceForm(firstCounterValue: .constant("12344"), secondCounterValue: .constant("0"))
			.environmentObject(AddDistanceViewModel())
    }
}
