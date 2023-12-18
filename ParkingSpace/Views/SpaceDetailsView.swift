//
//  SpaceDetailsView.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 16/12/2023.
//

import SwiftUI
import MapKit

struct SpaceDetailsView: View {
    
    @StateObject var vm = PlacesViewModel()
    
    var place: PlacesModel
    
    var  parkingTimeArr = [
        ParkingTime(num: "1-2", pre: "$12"),
        ParkingTime(num: "1-3", pre: "$12"),
        ParkingTime(num: "1-4", pre: "$12"),
        ParkingTime(num: "1-5", pre: "$12"),
        ParkingTime(num: "1-6", pre: "$12"),
        ParkingTime(num: "1-7", pre: "$12"),
        ParkingTime(num: "1-8", pre: "$12"),
        ParkingTime(num: "1-9", pre: "$12")
        
    ]
    
    @State var isContinue = false
    
    var body: some View {
        
   
            
        VStack(spacing: 25){
                
                HStack{
                    
                    AsyncImage(url: place.nameImage){ result in
                        
                        if let image = result.image{
                            image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 335, height: 248)
                            .cornerRadius(25)
                               
                        }else{
                            ProgressView()
                                .frame(width: 335, height: 248)
                        }
                        
                    }

                }
                
                
                VStack(alignment: .leading){
                    
                
                Text(place.titile)
                .font(.title2).bold()
                    
               
                Text(place.description)
                        .font(.title3)
                
                    HStack(spacing: 16) {
                        
                        HStack{
                            Image("routing")
                                .padding(.all,6)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                .cornerRadius(40)
                            
                            Text(place.distance)
                            
                        }
                        
                        HStack{
                            
                            Image(systemName: "clock")
                                .padding(.all,4)
                                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                .cornerRadius(40)
                            
                            Text(place.time)
                            
                        }
                    }
                    
                   
                    
                    
                }
            
      
            VStack(spacing: 20){
               
                Text("Parking Time")
                    .font(.title2).bold()
                
                ScrollView(.horizontal){
                    HStack{
                        
                        ForEach(parkingTimeArr){ parking in
                            parking
                        }
                    }
                }
            }
               
            
            Button(action: {
                isContinue = true
                
            }, label: {
                Text("Continue")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.color1)
                    .cornerRadius(12)
            })
            .fullScreenCover(isPresented: $isContinue){
                SelectSpaceView()
            }
            
            
//            if let mapsURL = URL(string: "https://www.google.com/maps/place/\(place.location.absoluteString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)") {
//                              Link("Open in Maps", destination: mapsURL)
//                                  .font(.headline)
//                                  .foregroundColor(.blue)
//                                  .underline()
//                          } else {
//                              Text("Invalid URL")
//                                  .foregroundColor(.red)
//                          }

            
        }.padding()
        
            
        }
    }
        
    



struct SpaceDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceDetailsView(place: PlacesModel(
            nameImage: URL(string: "https://images.unsplash.com/photo-1532217635-b45271b1aab6?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
            titile: "Sample Place",
            description: "This is a sample place description.",
            distance: "1 km",
            time: "1 hr"
          
//            location: URL(string: "24.782254,46.6263072")!
        ))
    }
}
