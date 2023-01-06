//
//  AddDistanceButton.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct AddDistanceButton: View {
	@EnvironmentObject var addDistanceVM: AddDistanceViewModel

	@Binding var counterStartKilometers: Int?
	@Binding var counterEndKilometers: Int?


    var body: some View {
        Button(action: {
			addDistanceVM.addCounterDistance(from: counterStartKilometers, to: counterEndKilometers)
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
			counterStartKilometers: .constant(0),
			counterEndKilometers: .constant(10)
		)
			.environmentObject(AddDistanceViewModel())
			.previewLayout(.sizeThatFits)
    }
}
