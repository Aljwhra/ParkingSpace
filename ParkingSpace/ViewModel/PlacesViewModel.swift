//
//  PlacesViewModel.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 16/12/2023.
//

import Foundation
import SwiftUI


class PlacesViewModel: ObservableObject {
    @Published var places: [PlacesModel] = []
    
    init(){
        
        fetchData()
    }
    
    func fetchData(){
        
            
            let url = URL(string: "https://njhubjtehmhbtjdqnqsh.supabase.co/rest/v1/ParkingPlaces?select=*")!
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            // Set your headers here
            request.setValue("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5qaHVianRlaG1oYnRqZHFucXNoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI2NTQ5MzIsImV4cCI6MjAxODIzMDkzMn0.Bkff66JBoV5hJczAoE_K1jF8ztzRtMQxeYLcU_FqngU", forHTTPHeaderField: "apikey")
            request.setValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5qaHVianRlaG1oYnRqZHFucXNoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI2NTQ5MzIsImV4cCI6MjAxODIzMDkzMn0.Bkff66JBoV5hJczAoE_K1jF8ztzRtMQxeYLcU_FqngU", forHTTPHeaderField: "Authorization")
            
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { data, response, error in
                if let error = error {
                    print("Error with fetching data: \(error)")
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                    print("Error with the response, unexpected status code: \(String(describing: response))")
                    return
                }
                
                if let data = data,
                   let dataString = String(data: data, encoding: .utf8) {
                    print("Response data string:\n \(dataString)")
                    
                    
                    let decoder = JSONDecoder()
                    
                    do {
   
                        self.places = try decoder.decode([PlacesModel].self,from: data)
                        
                        print(self.places)
                        
                        }catch {
                        print(error as Any)
                    }
                }
                
                
                
            }
            
            task.resume()
        }
    }

