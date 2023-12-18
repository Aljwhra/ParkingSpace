//  ContentView.swift
//  Parking
//
//  Created by ٍٍRaneem A on 02/06/1445 AH.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var auth = AuthService.shared
    
    @State var didSplash: Bool = false
    @State var didOnboard: Bool = false
    
    var body: some View {
        if didSplash {
            if didOnboard && auth.loggedIn {
                CustomTabView()
            } else {
                OnboardingView(didOnboard: $didOnboard)
            }
        } else {
            SplashView(didSplash: $didSplash)
        }
        
    }
}

#Preview {
    ContentView()
}
