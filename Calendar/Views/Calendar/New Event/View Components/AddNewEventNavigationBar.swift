//
//  AddNewEventNavigationBar.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI
import SwiftUIX

struct AddNewEventNavigationBar: View {
    
    @Binding public var addNewEvent: Bool
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            HStack (alignment: .center, spacing: 16) {
                Spacer()
                Button (action: {
                    self.addNewEvent = false
                }) {
                    Image(systemName: "multiply")
                        .font(.headline)
                        .foregroundColor(Color.contrast)
                        .frame(width: 44, height: 44, alignment: .center)
                        .background(
                            VisualEffectBlurView(blurStyle: .systemThinMaterial)
                                .clipShape(Capsule())
                                .overlay(Capsule()
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(Color.background)
                                    .foregroundLinearGradient(Gradient(colors: [Color.background, Color.background]))
                                )
                                .ignoresSafeArea()
                                .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                        )
                }
            }
            HStack (alignment: .center, spacing: 16) {
                Text("Add New Task")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.contrast)
                Spacer()
            }
        }
    }
}

struct AddNewEventNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEventNavigationBar(
            addNewEvent: .constant(false)
        )
    }
}
