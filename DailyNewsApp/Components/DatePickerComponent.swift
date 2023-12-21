//
//  DatePickerComponent.swift
//  DailyNewsApp
//
//  Created by Mariam Joglidze on 20.12.23.
//

import SwiftUI

struct DatePickerComponent: View {
    @State private var selectedDate: Date = .now
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("creation Date")
                .foregroundColor(.gray)
                .padding(.horizontal)
            DatePicker(
                "",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .padding(.horizontal)
        }
    }
}

#Preview {
    DatePickerComponent()
}
