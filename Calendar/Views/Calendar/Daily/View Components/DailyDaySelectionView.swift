//
//  DailyDaySelectionView.swift
//  Calendar
//
//  Created by Pablo Carmona Esparza on 6/16/22.
//

import SwiftUI
import SwiftUIX

struct DailyDaySelectionView: View {
    
    @Binding public var selectedDay: Int
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: customMeasure){
                ForEach (weekDayList, id:\.id) { item in
                    
                    Button {
                        withAnimation {
                            self.selectedDay = item.id
                        }
                    } label: {
                        VStack (alignment: .center, spacing: 12) {
                            Text("\(item.id + 1)")
                                .font(.title).fontWeight(.bold)
                                .foregroundColor((self.selectedDay == item.id) ? Color.background : Color.accentColor)
                            Text(item.short)
                                .font(.subheadline)
                                .foregroundColor((self.selectedDay == item.id) ? Color.background : Color.accentColor)
                        }
                        .padding(.vertical, customMeasure).frame(width: 66)
                        
                        .background((self.selectedDay == item.id) ?
                                    LinearGradient(colors: [Color.accentColor, Color.accentColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .clipShape(Capsule())
                                    :
                                        LinearGradient(colors: [Color.clear, Color.clear], startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .clipShape(Capsule())
                        )
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
            }
            .padding(customMeasure).padding(.bottom, customMeasure)
        }
        .padding(-customMeasure).padding(.bottom, -customMeasure)
    }
}





struct DailyDaySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        DailyDaySelectionView(
            selectedDay: .constant(0)
        )
    }
}
