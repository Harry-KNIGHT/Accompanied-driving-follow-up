//
//  AddDistanceFormView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct AddDistanceFormView: View {
	@State private var firstCounterValue: String = ""
	@State private var secondCounterValue: String = ""
	@Binding var showSheet: Bool
	var body: some View {
		NavigationView {
			VStack {
					AddStartAndFinalDistanceForm(
						firstCounterValue: $firstCounterValue,
						secondCounterValue: $secondCounterValue,
						showSheet: $showSheet
					)
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
			AddDistanceFormView(showSheet: .constant(true))
		}
	}
}
