//
//  DailyTabView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/17/22.
//

import SwiftUI

struct DailyTabView: View {
    
    @Binding public var selectedDay: Int
    
    var body: some View {
        TabView(selection: self.$selectedDay) {
            ForEach(weekDayList, id:\.id) { item in
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (alignment: .leading, spacing: customMeasure * 2) {
                        VStack (alignment: .leading, spacing: 0) {
                            ForEach (0 ..< 25) { item in
                                HStack (alignment: .top, spacing: 16) {
                                    HStack (alignment: .center, spacing: 0) {
                                        Text("\(item):00")
                                            .font(.subheadline)
                                        Spacer(minLength: 0)
                                        
                                    }
                                    .frame(width: 42)
                                    ZStack {
                                        VStack (alignment: .leading, spacing: 0) {
                                            RoundedRectangle(cornerRadius: 2)
                                                .frame(height: 1)
                                                .foregroundColor(Color.darkShadow)
                                            RoundedRectangle(cornerRadius: 2)
                                                .frame(height: 88)
                                                .foregroundColor(Color.clear)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .ignoresSafeArea()
    }
}

struct DailyTabView_Previews: PreviewProvider {
    static var previews: some View {
        DailyTabView(
            selectedDay: .constant(0)
        )
    }
}
