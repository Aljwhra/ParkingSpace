//
//  ProfileViewViewModel.swift
//  Parking
//
//  Created by ٍٍRaneem A on 02/06/1445 AH.
//
import SwiftUI

class ProfileViewViewModel: ObservableObject {
    func logout() {
        Task {
            AuthService.shared.user = nil
            AuthService.shared.loggedIn = false
            AuthService.shared.token = ""
        }
    }
}

