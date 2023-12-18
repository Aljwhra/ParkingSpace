//
//  SplashView.swift
//  Parking
//
//  Created by ٍٍRaneem A on 03/06/1445 AH.
//

import SwiftUI

struct SplashView: View {
    
    @Binding var didSplash: Bool
    
    var body: some View {
        Text("Splash View")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        didSplash.toggle()
                    }
                }
            }
    }
}

#Preview {
    SplashView(didSplash: .constant(false))
}

