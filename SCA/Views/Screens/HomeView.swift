//
//  HomeView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct HomeView: View {
	@State private var isShowingSheet: Bool = false
    var body: some View {
		VStack {
			Spacer()
			Text("0 / 3 000km")
				.font(.largeTitle)
				.fontWeight(.semibold)
				.padding(.top, 20)
			Spacer()
			HStack {
				Spacer()

				OpenSheetButtonView(isSheetOpened: $isShowingSheet)
			}
			.padding([.bottom, .trailing], 20)
		}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}