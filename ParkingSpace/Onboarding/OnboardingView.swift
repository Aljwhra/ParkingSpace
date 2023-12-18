//
//  OnboardingView.swift
//  Parking
//
//  Created by ٍٍRaneem A on 03/06/1445 AH.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var didOnboard: Bool
    
    var body: some View {
        NavigationStack {
            FirstOnboard(didOnboard: $didOnboard)
        }
    }
}

#Preview {
    OnboardingView(didOnboard: .constant(false))
}
