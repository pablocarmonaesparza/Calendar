//
//  UserModel.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/15/22.
//

import Foundation
import UIKit

class UserModel {
    
    @Published var firstName: String = ""
    @Published var lastName : String = ""
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}
