//
//  HomeView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct HomeView: View {
	@State private var isShowingSheet: Bool = false
	@EnvironmentObject var distanceVM: AddDistanceViewModel
    var body: some View {
		VStack {
			Spacer()
			Text("\(distanceVM.calculDistance()) / 3 000km")
				.font(.largeTitle)
				.fontWeight(.semibold)
				.padding(.top, 20)
				.accessibilityValue("\(distanceVM.calculDistance()) / 3 000km")
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
			.environmentObject(AddDistanceViewModel())
    }
}
