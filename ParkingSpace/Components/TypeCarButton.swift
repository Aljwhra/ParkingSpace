//
//  TypeCarButton.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI

struct TypeCarButton: View {
    

    @State private var selected: Int = 0
    
    var body: some View {
        HStack(spacing: 9){
            
            Button(action: {
                withAnimation {
                    selected = 0
                }
            }, label: {
                VStack{
                    Image("car")
                        .resizable()
                        .frame(width: 45, height: 40)
                       
                    Text("Car")
                        .font(.headline)
                        .bold()
                       
                }
                .padding()
                .foregroundStyle(.black)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(selected == 0 ? Color("color1") : .white)
                .cornerRadius(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 0.5)
                }
                
            })
           
            

            
            
            Button(action: {
                withAnimation {
                    selected = 1
                }
            }, label: {
                VStack{
                    Image("bike")
                        .resizable()
                        .frame(width: 45, height: 40)
                       
                    Text("Bike")
                        .font(.headline)
                        .bold()
                       
                }
                .foregroundStyle(.black)
                .padding(.horizontal, 32)
                .padding(.vertical, 28)
                .background(selected == 1 ? Color("color1") : .white)
                .cornerRadius(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 0.5)
                }
            
            })
            
            
            Button(action: {
                withAnimation {
                    selected = 2
                }
            }, label: {
                VStack{
                    Image("bus")
                        .resizable()
                        .frame(width: 45, height: 40)
                    Text("Bus")
                        .font(.headline)
                        .bold()
                    
                       
                }
                .foregroundStyle(.black)
                .padding()
                .padding(.horizontal, 15)
                .padding(.vertical, 12)
                .background(selected == 2 ? Color("color1") : .white)
                .cornerRadius(8)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 0.5)
                }
            
            })
            
            
            
        }
        
        
    }
}




#Preview {
    TypeCarButton()
}
