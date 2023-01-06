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

    var body: some View {
		Form {
			Section(header: Text("Distance début")) {
				TextField("1345", value: $firstCounterValue, formatter: NumberFormatter())
			}
			Section(header: Text("Distance fin")) {
				TextField("1545", value: $secondCounterValue, formatter: NumberFormatter())
			}
		}
		.toolbar {
			ToolbarItemGroup(placement: .keyboard) {
					Spacer()
				AddDistanceButton(
					counterStartKilometers: $firstCounterValue,
					counterEndKilometers: $secondCounterValue)
			}
		}
		.keyboardType(.numberPad)
    }
}

struct AddStartAndFinalDistanceForm_Previews: PreviewProvider {
    static var previews: some View {
		AddStartAndFinalDistanceForm(firstCounterValue: .constant(12344), secondCounterValue: .constant(0))
    }
}
