//
//  TotalDistanceForm.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct TotalDistanceForm: View {
	@Binding var distanceInKm: String
    var body: some View {
		Form {
			Section(header: Text("Distance totale")) {
				TextField("45,5km", text: $distanceInKm)
			}
		}
    }
}

struct TotalDistanceForm_Previews: PreviewProvider {
    static var previews: some View {
		TotalDistanceForm(distanceInKm: .constant(""))
    }
}
