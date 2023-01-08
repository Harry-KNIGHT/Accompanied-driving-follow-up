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
		Form {
			Section(header: Text("Distance début")) {
				TextField("Enter Number", value: $firstCounterValue, format: .number)
			}
			Section(header: Text("Distance fin")) {
				TextField("Enter Number", value: $secondCounterValue, format: .number)


			}
		}
		.keyboardType(.numberPad)

		.toolbar {
			ToolbarItemGroup(placement: .keyboard) {
					Spacer()
				AddDistanceButton(
					counterStartKilometers: $firstCounterValue,
					counterEndKilometers: $secondCounterValue,
					showSheet: $showSheet
				)
			}
		}
    }
}

struct AddStartAndFinalDistanceForm_Previews: PreviewProvider {
    static var previews: some View {
		AddStartAndFinalDistanceForm(firstCounterValue: .constant(12344), secondCounterValue: .constant(0), showSheet: .constant(false))
			.environmentObject(AddDistanceViewModel())
    }
}
