//
//  DailyAddEventButton.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/17/22.
//

import SwiftUI

struct DailyAddEventButton: View {
    
    @Binding public var addNewEvent: Bool
    
    var body: some View {
        Button (action: {self.addNewEvent.toggle()}) {
            Image(systemName: "plus")
                .font(.title).foregroundColor(Color.background)
                .frame(width: customMeasure * 4, height: customMeasure * 4)
                .background(Color.accentColor
                    .clipShape(Circle())
                    .shadow(color: Color.darkShadow, radius: 12, x: 0, y: 12)
                )
            
        }
        .sheet(isPresented: self.$addNewEvent, content: {
            AddNewEventView(
                addNewEvent: self.$addNewEvent
            )
        })
        .padding(customMeasure)
    }
}

struct DailyAddEventButton_Previews: PreviewProvider {
    static var previews: some View {
        DailyAddEventButton(
            addNewEvent: .constant(false)
        )
    }
}
