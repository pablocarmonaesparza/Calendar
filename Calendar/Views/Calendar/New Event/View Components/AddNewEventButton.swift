//
//  AddNewEventButton.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI

struct AddNewEventButton: View {
    
    @Binding public var addNewEvent: Bool
    
    var body: some View {
        Button (action: {
            self.addNewEvent = false
        }) {
            Text("Add to calendar")
                .font(.headline).fontWeight(.bold)
                .foregroundColor(Color.background)
                .frame(width: UIScreen.main.bounds.width - 32, height: 44)
                .background(Color.accentColor
                    .cornerRadius(8)
                    .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                )
        }
    }
}

struct AddNewEventButton_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEventButton(
            addNewEvent: .constant(false)
        )
    }
}
