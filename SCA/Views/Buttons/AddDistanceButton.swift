//
//  AddDistanceButton.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct AddDistanceButton: View {
	@EnvironmentObject var addDistanceVM: AddDistanceViewModel

	@Binding var counterStartKilometers: String
	@Binding var counterEndKilometers: String


    var body: some View {
        Button(action: {
			addDistanceVM.addCounterDistance(from: Int(counterStartKilometers), to: Int(counterEndKilometers))
		}, label: {
			HStack {
				Image(systemName: "plus.app.fill")
					.font(.title3)
				Text("Ajouter")
			}
		})
		.buttonStyle(.borderedProminent)
    }
}

struct AddDistanceButton_Previews: PreviewProvider {
    static var previews: some View {
		AddDistanceButton(
			counterStartKilometers: .constant("0"),
			counterEndKilometers: .constant("")
		)
			.environmentObject(AddDistanceViewModel())
			.previewLayout(.sizeThatFits)
    }
}
