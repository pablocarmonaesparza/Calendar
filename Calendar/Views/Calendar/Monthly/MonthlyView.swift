//
//  MonthlyView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 24/02/22.
//

import SwiftUI
import SwiftUIX

struct MonthlyView: View {
    
    @Binding public var showCalendarView : Bool
    
    var body: some View {
        VStack (alignment: .leading, spacing: customMeasure * 2) {
            VStack (alignment: .leading, spacing: customMeasure * 2) {
                
                MonthlyNavigationBar(
                    showCalendarView: self.$showCalendarView
                )
                
                MonthlyCalendarBar()
            }
            
            Divider()
            
            MonthlyCalendarView()
            
            Divider()
            
            HStack (alignment: .center, spacing: customMeasure) {
                MonthlyTodayButton()
                MonthlyNextMonthButton()
                MonthlyNextYearButton()
            }
        }
        .padding()
        .background(Color.background.ignoresSafeArea())
    }
}

struct MonthlyView_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyView(
            showCalendarView:   .constant(false)
        )
    }
}
