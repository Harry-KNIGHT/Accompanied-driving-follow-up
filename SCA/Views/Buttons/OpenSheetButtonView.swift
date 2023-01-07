//
//  OpenSheetButtonView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct OpenSheetButtonView: View {
	@Binding var isSheetOpened: Bool
    var body: some View {
        Button(action: {
			self.isSheetOpened = true
		}, label: {
			Image(systemName: "plus.circle.fill")
				.resizable()
				.scaledToFit()
				.frame(width: 100)
		})
		.sheet(isPresented: $isSheetOpened) {
			AddDistanceFormView(showSheet: $isSheetOpened)
		}
    }
}

struct OpenSheetButtonView_Previews: PreviewProvider {
    static var previews: some View {
		OpenSheetButtonView(isSheetOpened: .constant(false))
    }
}
