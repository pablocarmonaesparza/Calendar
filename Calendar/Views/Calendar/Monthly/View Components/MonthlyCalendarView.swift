//
//  MonthlyCalendarView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI

struct MonthlyCalendarView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack (alignment: .leading, spacing: customMeasure * 2) {
            HStack (alignment: .center, spacing: UIScreen.main.bounds.width / 18) {
                ForEach (weekDayList, id: \.id) { item in
                    Text(item.short)
                }
            }
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(1 ..< 31) { item in
                    Text("\(item)")
                }
            }
            
            Spacer(minLength: 0)
        }
    }
}

struct MonthlyCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyCalendarView()
    }
}
