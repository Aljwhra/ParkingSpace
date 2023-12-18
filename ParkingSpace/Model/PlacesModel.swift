//
//  PlacesModel.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import Foundation


struct PlacesModel: Identifiable ,Codable {
    
    var id = UUID()
    var nameImage: URL
    var titile: String
    var description: String
    var distance: String
    var time: String
  //  var location: URL
}


