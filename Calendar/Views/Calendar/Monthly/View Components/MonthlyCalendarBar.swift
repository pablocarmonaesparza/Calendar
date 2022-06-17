//
//  MonthlyCalendarBar.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI

struct MonthlyCalendarBar: View {
    
    @State private var monthSelection: String = "September"
    
    var body: some View {
        HStack (alignment: .center, spacing: customMeasure) {
            HStack (alignment: .center, spacing: customMeasure / 4) {
                Image(systemName: "chevron.left")
                Text("Aug")
                    .font(.subheadline).fontWeight(.bold)
                    .foregroundColor(Color.contrast)
            }
            Spacer(minLength: 0)
            Text("\(monthSelection)")
                .font(.title).fontWeight(.bold)
                .foregroundColor(Color.contrast)
            Spacer(minLength: 0)
            HStack (alignment: .center, spacing: customMeasure / 4) {
                Text("Oct")
                    .font(.subheadline).fontWeight(.bold)
                    .foregroundColor(Color.contrast)
                Image(systemName: "chevron.right")
            }
        }
    }
}

struct MonthlyCalendarBar_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyCalendarBar()
    }
}
