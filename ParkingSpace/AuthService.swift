//
//  AuthService.swift
//  Parking
//
//  Created by ٍٍRaneem A on 02/06/1445 AH.
//

import Foundation

final class AuthService: ObservableObject {
    
    static let shared = AuthService()
    
    @Published var user: User? = nil
    var token: String = ""
    
    @Published var loggedIn: Bool = false
   
}
