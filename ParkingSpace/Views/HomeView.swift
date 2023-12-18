//
//  HomeView.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI
import CoreLocation
import MapKit


struct HomeView: View {
    
    @StateObject var vm = PlacesViewModel()
    
    var body: some View {
        
        NavigationStack{
            
            HeaderView()
            
            ScrollView{
                
                VStack{
                     
                    TypeCarButton()
                        .padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        LocationMapView()

                            .frame(width: 360, height: 200)
                
                        Text("Current Location")
                          .font(
                            Font.custom("Gilroy", size: 18)
                              .weight(.semibold)
                            
                          )
                          .foregroundColor(Color(red: 0.04, green: 0.05, blue: 0.05))
                          .frame(maxWidth: .infinity, alignment: .topLeading)
                          .padding()
                        // Body Small/Medium
                        Text("Your Current Location")
                        
                          .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                          .frame(width: 250, alignment: .topLeading)
                          .padding()
                        
                    }
                    .padding(0)
                    
                    .cornerRadius(20)
                    .overlay(
                      RoundedRectangle(cornerRadius: 20)
                        .inset(by: 0.25)
                        .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 0.5)
                    )
                    
                    
                    Text("Popular Places")
                        .font(.title)
                    
                    
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    ScrollView(.horizontal){
                        HStack{
                            
                            ForEach(vm.places){ places in
                                
                                
                                NavigationLink(
                                    
                                    destination: {
                                 SpaceDetailsView(place: places)
                                        
                                    },
                                    label: {
                                        VStack(spacing: 25) {
                                            
                                            
                                            AsyncImage(url: places.nameImage){ result in
                                                
                                                if let image = result.image{
                                                    image
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                     //   .scaledToFill()
                                                       .frame(width: 250, height: 170)
                                                }else{
                                                    ProgressView()
                                                        .frame(width: 250, height: 170)
                                                }
                                                
                                            }
                                            .background(
                                                Rectangle()
                                                    .fill(.gray.opacity(0.3))
                                                    .frame(width: 250, height: 170)
                                                
                                            )
                                            .cornerRadius(16)
                                            
                                            Text("\(places.titile)")
                                                .font(.callout)
                                                .foregroundStyle(.black)

                                            

                                            
                                            Text("\(places.description)")
                                            
                                                .font(
                                                    Font.custom("Gilroy", size: 12)
                                                        .weight(.medium)
                                                )
                                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                            
                                                .frame(width: 208, alignment: .topLeading)
                                            
                                            
                                            HStack(spacing: 16) {
                                                
                                                Image("routing")
                                                    .padding(.all,6)
                                                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                                    .cornerRadius(40)
                                                
                                                Text("\(places.distance)")
                                                    .font(
                                                        Font.custom("", size: 12)
                                                            .weight(.medium)
                                                    )
                                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                                
                                                HStack{
                                                    
                                                    Image(systemName: "clock")
                                                        .foregroundStyle(.black)
                                                        .padding(.all,4)
                                                        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                                        .cornerRadius(40)
                                                    
                                                    Text("\(places.time)")
                                                        .font(
                                                            Font.custom("", size: 12)
                                                                .weight(.medium)
                                                        )
                                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                                        
                                                        
                                                }
                                            }
                                            .padding(0)
                                            
                                            
                                            
                                        }
                                    }
                                )
                                .frame(width: 250, height: 300)
                                .padding(.bottom, 16)
                                .background(.white)
                                .cornerRadius(16)
                                .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 0.5)

                                )
                              
                                
                                
                            }
                            
                        }
                        
                        .padding()
                        .onAppear{
                            vm.fetchData()
                        }
                        
                    }
                    
                   
                    
                }.padding()
            }
            
            
        }
        
    }
}



#Preview {
    HomeView()
}
