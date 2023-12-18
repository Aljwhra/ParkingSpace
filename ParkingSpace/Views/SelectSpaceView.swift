//
//  SelectSpaceView.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 17/12/2023.
//

import SwiftUI

struct SelectSpaceView: View {
    var body: some View {
        ScrollView{
            VStack{
                
               
                Text("Select Space")
                    .font(.title2)
                
                  .frame(width: 207, alignment: .top)
                  .padding(.top)
                  .padding(.bottom,20)
                
                VStack{
                    
                    Text("A01")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .cornerRadius(8)
                        .frame(width: 307, alignment: .leading)
                }
                
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                
                HStack{
                    
                   
                    
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: 90))
                        .offset(x: -60)
                    
                    Text("1")
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 0.6, height: 90)
                        .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                    
                    
                    Text("4")
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x: 60)
                  
                    
                }.padding(0)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                HStack{
                    
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: 90))
                        .offset(x: -60)
                    
                    Text("2")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 0.6, height: 90)
                        .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                    
                    Text("5")
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x: 60)
                    
                    
                }.padding(0)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                HStack{
                    
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: 90))
                        .offset(x: -60)
                    
                    Text("3")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 0.6, height: 90)
                        .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                    
                    Text("6")
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x: 60)
                    
                }.padding(0)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                
                HStack(alignment: .top, spacing: 244) {
                   
                    Text("Entry")
                      .font(
                        Font.custom("Gilroy", size: 14)
                          .weight(.medium)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    
                   
                    Text("Exit")
                      .font(
                        Font.custom("Gilroy", size: 14)
                          .weight(.medium)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    
                    
                    
                    
                }
                .padding()
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                
                VStack{
                    
                    Text("B01")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .cornerRadius(8)
                        .frame(width: 307, alignment: .leading)
                }.padding(.top,10)
                
                
                HStack{
                    
                   
                    
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: 90))
                        .offset(x: -60)
                    
                    Text("1")
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 0.6, height: 90)
                        .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                    
                    
                    Text("4")
                 //   Image("car2")
                       // .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x: 60)
                  
                    
                }.padding(0)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                HStack{
                    
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: 90))
                        .offset(x: -60)
                    
                    Text("2")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 0.6, height: 90)
                        .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                    
                    Text("5")
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .clipped()
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x: 60)
                    
                    
                }.padding(0)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 0.6)
                    .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                HStack{
                    
                   // Image("car2")
                    Text("3")
                      // .resizable()
                       .aspectRatio(contentMode: .fit)
                        .frame(width: 53, height: 90)
//                        .clipped()
//                        .rotationEffect(Angle(degrees: 90))
                        .offset(x: -60)
                    
                   
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 0.6, height: 90)
                        .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                    
                    Text("6")
                    Image("car2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 43, height: 90)
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x: 60)
                    
                }.padding(0)
                
                
                VStack{
                    Button(action: {
                        
                    }, label: {
                        Text("Continue")
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 48)
                            .background(Color.color1)
                            .cornerRadius(12)
                    })
                    
                    
                }.padding(.top,25)
            }
            .padding()
        }
    }
}

#Preview {
    SelectSpaceView()
}
