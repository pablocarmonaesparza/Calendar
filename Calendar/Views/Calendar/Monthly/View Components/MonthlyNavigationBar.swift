//
//  MonthlyNavigationBar.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI
import SwiftUIX

struct MonthlyNavigationBar: View {
    
    @Binding public  var showCalendarView : Bool
    @State   private var yearSelection    : Int    = 2022
    
    var body: some View {
        HStack (alignment: .center, spacing: customMeasure) {
            Text(String(yearSelection))
                .font(.title)
                .foregroundColor(Color.contrast.opacity(0.5))
            Spacer(minLength: 0)
            Button (action: {self.showCalendarView.toggle()}) {
                Image(systemName: "multiply")
                    .font(.headline).foregroundColor(Color.contrast)
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
        }
    }
}

struct MonthlyNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyNavigationBar(showCalendarView: .constant(false))
    }
}
