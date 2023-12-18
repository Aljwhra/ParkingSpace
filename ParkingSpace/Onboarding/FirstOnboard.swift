//
//  FirstOnboard.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI

struct FirstOnboard: View {
    
    @Binding var didOnboard: Bool
    @State var isStart = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("b1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack(spacing: 50){
                    
                    
                    VStack(alignment: .center, spacing: 10) {
                        Text("One-step \nsolution to book a Parking Space")
                            .font(.title)
                        
                            .foregroundStyle(.black)
                            .frame(width: 290, height: 124, alignment: .topLeading)
                        
                        
                        Text("Easily view nearby popular grounds and make a booking at your preferred time.")
                        
                        
                            .foregroundStyle(.black.opacity(0.8))
                            .frame(width: 281.94174, alignment: .topLeading)
                        
                        
                    }
                    .bold()
                    .padding(16)
                    .frame(width: 355, height: 300, alignment: .center)
                    .background(Color.color1)
                    .cornerRadius(20)
                    
                    
                    
                    
                    HStack{
                        
                        NavigationLink {
                            SecondOnboard(didOnboard: $didOnboard)
                        } label: {
                            HStack(spacing: 70){
                                Image("vector")
                                
                                Text("Start")
                                    .foregroundStyle(.black)
                                    .font(.title3)
                                    .bold()
                            }
                            
                        }
                        
                        .padding(.horizontal, 20)
                        .padding(.vertical, 24)
                        .background(Color(red: 0.91, green: 0.91, blue: 0.91))
                        .cornerRadius(50)
                    }
                    .padding(.horizontal, 6)
                    .padding(.vertical, 7)
                    .background(.black.opacity(0.4))
                    .cornerRadius(50)
                    
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    FirstOnboard(didOnboard: .constant(false))
}
