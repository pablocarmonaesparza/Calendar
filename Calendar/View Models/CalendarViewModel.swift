//
//  CalendarViewModel.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import Foundation

struct Month: Identifiable {
    var id:     Int
    var name:   String
    var short:  String
}

struct WeekDay: Identifiable {
    var id:     Int
    var name:   String
    var short:  String
}
