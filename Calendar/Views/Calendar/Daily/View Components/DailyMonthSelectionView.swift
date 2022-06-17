//
//  DailyMonthSelectionView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI

struct DailyMonthSelectionView: View {
    
    @Binding public var selectedMonth: Int
    
    var body: some View {
        HStack (alignment: .center, spacing: customMeasure) {
            Button(action: {
                if selectedMonth <= 11 {
                    self.selectedMonth -= 1
                }
                if selectedMonth < 0 {
                    self.selectedMonth += 11
                }
            }) {
                HStack (alignment: .center, spacing: 4) {
                    Image(systemName: "chevron.left")
                    Text(monthList[selectedMonth - 1].short)
                }
            }
            .buttonStyle(.plain)
            
            Spacer(minLength: 0)
            
            Text(monthList[selectedMonth].name)
                .font(.title).fontWeight(.bold)
                .foregroundLinearGradient(Gradient(colors: [Color.contrast, Color.contrast]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Spacer(minLength: 0)
            
            Button(action: {
                if selectedMonth >= 0 {
                    selectedMonth += 1
                }
                if selectedMonth > 11 {
                    selectedMonth -= 11
                }
            }) {
                HStack (alignment: .center, spacing: 4) {
                    Text(monthList[selectedMonth + 1].short)
                    Image(systemName: "chevron.right")
                }
            }
            .buttonStyle(.plain)
            
        }
    }
}
struct DailyMonthSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        DailyMonthSelectionView(
            selectedMonth: .constant(0)
        )
    }
}
