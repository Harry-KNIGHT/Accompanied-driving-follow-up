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
			print("Distance added 😎")
		}, label: {
			Label("Ajouter", systemImage: "plus.circle.fill")
				.font(.title2)
		})
    }
}

struct AddDistanceButton_Previews: PreviewProvider {
    static var previews: some View {
        AddDistanceButton()
			.previewLayout(.sizeThatFits)
    }
}
