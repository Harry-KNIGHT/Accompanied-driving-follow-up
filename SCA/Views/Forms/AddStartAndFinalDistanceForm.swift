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
				TextField("13456", text: $firstCounterValue)
			}
			Section(header: Text("Distance fin")) {
				TextField("14230", text: $secondCounterValue)
			}
		}
		.toolbar {
			ToolbarItemGroup(placement: .keyboard) {
					Spacer()
					AddDistanceButton()
			}
		}
		.keyboardType(.numberPad)
    }
}

struct AddStartAndFinalDistanceForm_Previews: PreviewProvider {
    static var previews: some View {
		AddStartAndFinalDistanceForm(firstCounterValue: .constant("1,235"), secondCounterValue: .constant(""))
    }
}
