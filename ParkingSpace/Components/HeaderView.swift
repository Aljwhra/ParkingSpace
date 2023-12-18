//
//  HeaderView.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            
            Text("Hello, ")
                .font(.title2).bold()
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title)
                .padding()
                .background(
                    Circle()
                        .fill(.gray.opacity(0.4))
                
                )
           
            
            
        }
        .padding()
    }
}

#Preview {
    HeaderView()
}
