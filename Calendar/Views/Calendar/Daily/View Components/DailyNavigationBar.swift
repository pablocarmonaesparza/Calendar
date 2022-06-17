//
//  DailyNavigationBar.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI
import SwiftUIX

struct DailyNavigationBar: View {
    
    @Binding public var showCalendarView : Bool
    @Binding public var showTaskView     : Bool
    
    var body: some View {
        HStack (alignment: .center, spacing: customMeasure) {
            Button(action: {self.showCalendarView.toggle()}) {
                Image(systemName: "calendar")
                    .font(.headline).foregroundColor(Color.contrast.opacity(0.75))
                    .frame(width: 44, height: 44, alignment: .center)
                    .background(
                        VisualEffectBlurView(blurStyle: .systemThinMaterial)
                                    .clipShape(Circle())
                                    .overlay(Circle()
                                                .stroke(lineWidth: 2)
                                                .foregroundColor(Color.background)
                                                .foregroundLinearGradient(Gradient(colors: [Color.background, Color.background]))
                                            )
                                    .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                    )
            }
            .sheet(isPresented: self.$showCalendarView) {
                MonthlyView(
                    showCalendarView: self.$showCalendarView
                )
            }
            
            Button(action: {self.showTaskView.toggle()}) {
                Image(systemName: "list.bullet")
                    .font(.headline).foregroundColor(Color.contrast.opacity(0.75))
                    .frame(width: 44, height: 44, alignment: .center)
                    .background(
                        VisualEffectBlurView(blurStyle: .systemThinMaterial)
                                    .clipShape(Circle())
                                    .overlay(Circle()
                                                .stroke(lineWidth: 2)
                                                .foregroundColor(Color.background)
                                                .foregroundLinearGradient(Gradient(colors: [Color.background, Color.background]))
                                            )
                                    .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                    )
            }
            Spacer(minLength: 0)
            Button(action: {}) {
                Image("avatar")
                    .resizable().scaledToFill()
                    .frame(width: 44, height: 44, alignment: .center)
                    .clipped().background(Color.white)
                    .overlay(Circle()
                                .stroke(lineWidth: 2)
                                .foregroundColor(Color.background)
                    )
                    .clipShape(Circle())
                    .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
            }
        }
    }
}


struct DailyNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        DailyNavigationBar(
            showCalendarView: .constant(false),
            showTaskView    : .constant(false)
        )
    }
}
