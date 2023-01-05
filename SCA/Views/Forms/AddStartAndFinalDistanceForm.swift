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

    var body: some View {
		Form {
			Section(header: Text("Distance début")) {
				TextField("1,45km", text: $firstCounterValue)
			}
			Section(header: Text("Distance fin")) {
				TextField("1,450km", text: $secondCounterValue)
			}
		}
		.keyboardType(.decimalPad)
    }
}

struct AddStartAndFinalDistanceForm_Previews: PreviewProvider {
    static var previews: some View {
		AddStartAndFinalDistanceForm(firstCounterValue: .constant("1,235"), secondCounterValue: .constant(""))
    }
}
