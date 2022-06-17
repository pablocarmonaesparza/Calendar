//
//  DailyEventView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/17/22.
//

import SwiftUI
import SwiftUIX

struct DailyEventView: View {
    var body: some View {
        VStack (alignment: .trailing, spacing: customMeasure) {
            
            Spacer()
            
            HStack {
                Spacer(minLength: 0)
                VStack {
                    HStack {
                        VStack (alignment: .leading, spacing: 8) {
                            Text("Girlfriend: Dinner")
                                .font(.headline)
                                .foregroundColor(Color.contrast)
                            Text(loremIpsum)
                                .font(.caption)
                                .lineLimit(2)
                        }
                        Spacer()
                    }
                    
                    .padding()
                }
                .frame(width: 300,height: 84)
                .background(
                    VisualEffectBlurView(blurStyle: .systemThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 22))
                        .overlay(RoundedRectangle(cornerRadius: 22)
                            .stroke(lineWidth: 2)
                            .foregroundColor(Color.background)
                            .foregroundLinearGradient(Gradient(colors: [Color.background, Color.background]))
                        )
                        .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                )
            }
            .padding()
            .offset(y: 90)
            
            Spacer()
        }
    }
}

struct DailyEventView_Previews: PreviewProvider {
    static var previews: some View {
        DailyEventView()
    }
}
