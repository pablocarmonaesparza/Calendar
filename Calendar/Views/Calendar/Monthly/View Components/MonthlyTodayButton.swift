//
//  MonthlyTodayButton.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI
import SwiftUIX

struct MonthlyTodayButton: View {
    var body: some View {
        Button (action: {}) {
            Text("Today")
                .font(.headline)
                .foregroundColor(Color.contrast)
                .padding(.vertical, customMeasure / 2).padding(.horizontal, customMeasure)
                .background(
                    VisualEffectBlurView(blurStyle: .systemThinMaterial)
                        .clipShape(Capsule())
                        .overlay(Capsule()
                            .stroke(lineWidth: 2)
                            .foregroundColor(Color.background)
                            .foregroundLinearGradient(Gradient(colors: [Color.background, Color.background]))
                        )
                        .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                )
        }
    }
}

struct MonthlyTodayButton_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyTodayButton()
    }
}
