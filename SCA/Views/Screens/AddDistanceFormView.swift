//
//  AddDistanceFormView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct AddDistanceFormView: View {
	@State private var kilometerOrCounter: KilometerOrCounter = .counter
	@State private var firstCounterValue = ""
	@State private var finalCounterValue = ""
	var body: some View {
		NavigationView {
			VStack {
				KilometerOrCounterPickerView(kilometerOrCounter: $kilometerOrCounter)
				Form {
					Section(header: Text("Distance début")) {
						TextField("1 000km", text: $firstCounterValue)
					}
					Section(header: Text("Distance fin")) {
						TextField("1 120km", text: $firstCounterValue)
					}
				}
			}
			.navigationTitle("Ajouter une distance")
			.navigationBarTitleDisplayMode(.inline)
		}
	}

}

struct AddDistanceFormView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
			AddDistanceFormView()
		}
	}
}
