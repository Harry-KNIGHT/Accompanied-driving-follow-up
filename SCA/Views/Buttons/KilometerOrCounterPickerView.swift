//
//  KilometerOrCounterPickerView.swift
//  SCA
//
//  Created by Elliot Knight on 04/01/2023.
//

import SwiftUI

struct KilometerOrCounterPickerView: View {
	@Binding var kilometerOrCounter: KilometerOrCounter 

    var body: some View {
		Picker("Select distance or counter km", selection: $kilometerOrCounter) {
			ForEach(KilometerOrCounter.allCases, id: \.self) { choice in
				Text(choice.kmOrCounter)
					.tag(choice)
			}
		}
		.pickerStyle(.segmented)
    }
}

struct KilometerOrCounterPickerView_Previews: PreviewProvider {
    static var previews: some View {
		KilometerOrCounterPickerView(kilometerOrCounter: .constant(.counter))
    }
}
