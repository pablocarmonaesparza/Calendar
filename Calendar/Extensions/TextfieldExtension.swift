//
//  TextfieldExtension.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI

struct TextfieldExtension: View {
    
    
                    var placeholder : String
    @Binding public var action      : String
    
    var body: some View {
        TextField(self.placeholder, text: self.$action)
            .font(.body)
            .padding(.horizontal, 16)
            .frame(height: 44)
            .background(Color.gray.opacity(0.15))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct TextfieldExtension_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldExtension(
            placeholder: "",
            action: .constant("")
        )
    }
}
