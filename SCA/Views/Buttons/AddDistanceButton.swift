//
//  AddDistanceButton.swift
//  SCA
//
//  Created by Elliot Knight on 05/01/2023.
//

import SwiftUI

struct AddDistanceButton: View {
    var body: some View {
        Button(action: {
			// Add distance
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
        AddDistanceButton()
			.previewLayout(.sizeThatFits)
    }
}
