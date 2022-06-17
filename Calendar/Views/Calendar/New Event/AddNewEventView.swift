//
//  AddNewEventView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 23/02/22.
//

import SwiftUI
import SwiftUIX

struct AddNewEventView: View {
    
    @Binding public var addNewEvent      : Bool
    
    @State private var taskName         : String = ""
    @State private var taskDescription  : String = ""
    
    @State var selectedDate = Date()
    
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            
            AddNewEventNavigationBar(
                addNewEvent: self.$addNewEvent
            )
            
            TextfieldExtension(
                placeholder : "Add the task name",
                action      : self.$taskName
            )
            
            TextfieldExtension(
                placeholder : "Add the task description",
                action      : self.$taskDescription
            )
            
            Divider()
            
            DatePicker("Select date", selection: $selectedDate)
                .datePickerStyle(GraphicalDatePickerStyle())
            
            Spacer()
            
            AddNewEventButton(
                addNewEvent: self.$addNewEvent
            )
        }
        .padding(16)
        .background(Color.background.ignoresSafeArea())
    }
}

struct AddNewEventView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewEventView(
            addNewEvent: .constant(false)
        )
    }
}

