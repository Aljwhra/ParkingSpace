//
//  ParkingTime.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 16/12/2023.
//

import SwiftUI

struct ParkingTime: View , Identifiable{
    
    var id = UUID()
    var num : String
    var pre: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            VStack(alignment: .center, spacing: 8) {
                
                Text(num)
                  .font(
                    Font.custom("Gilroy", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.04, green: 0.05, blue: 0.05))
                
                
               
                Text("Hours")
                  .font(
                    Font.custom("Gilroy", size: 12)
                      .weight(.medium)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                  .frame(width: 50, alignment: .center)
                
            
                Text(pre)
                  .font(
                    Font.custom("Gilroy", size: 14)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.04, green: 0.05, blue: 0.05))
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .cornerRadius(8)
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.25)
                .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 0.5)
            )
        }
        .padding(0)
    }
}

#Preview {
    ParkingTime(num: "1-2", pre: "$12")
}
