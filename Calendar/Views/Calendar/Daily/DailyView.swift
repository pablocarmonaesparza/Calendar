//
//  DailyView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI

struct DailyView: View {
    
    @State private var selectedMonth    : Int       = 1
    @State private var selectedDay      : Int       = 0
    @State private var animationAmount  : Double    = 1.0
    
    @State private var showCalendarView : Bool      = false
    @State private var showTaskView     : Bool      = false
    @State private var addNewEvent      : Bool      = false
    
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .bottomTrailing) {
                
                VStack (alignment: .leading, spacing: customMeasure * 2) {
                    
                    DailyNavigationBar(
                        showCalendarView: self.$showCalendarView,
                        showTaskView:     self.$showTaskView
                    )
                    
                    DailyMonthSelectionView(
                        selectedMonth: self.$selectedMonth
                    )
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color.background)
                            .padding(-customMeasure).padding(.top, 56)
                            .ignoresSafeArea()
                        
                        VStack (alignment: .leading, spacing: customMeasure * 2) {
                            DailyDaySelectionView(
                                selectedDay: self.$selectedDay
                            )
                            
                            VStack (alignment: .leading, spacing: customMeasure * 2) {
                                Text(weekDayList[selectedDay].name)
                                    .font(.title).fontWeight(.bold)
                                    .animation(.none)
                            }
                            
                            DailyTabView(
                                selectedDay: self.$selectedDay
                            )
                        }
                    }
                    
                }
                .padding(.horizontal, 16)
                
                DailyAddEventButton(
                    addNewEvent: self.$addNewEvent
                )
                
                DailyEventView()
            }
            .background(Color.background)
            .navigationTitle("Home")
            .navigationBarHidden(true)
        }
    }
}


struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
            .preferredColorScheme(.light)
    }
}
