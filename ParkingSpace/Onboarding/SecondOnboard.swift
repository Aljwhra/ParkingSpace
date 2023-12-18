//
//  SecondOnboard.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI

struct SecondOnboard: View {
    
    @Binding var didOnboard: Bool
    
    var body: some View {
        ZStack{
            Image("b1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                
                VStack(spacing: 20){
                    
                  
            
                    Text("Welcome")
                        .font(.title).bold()
               
                    Text("Create an account to save your team, \nclub & league preferences.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    NavigationLink {
                    CreateAccount(didOnboard: $didOnboard)
                    } label: {
                        Text("Sign Up")
                            .font(.title3).bold()
                            .foregroundStyle(.black)
                            .padding(.horizontal ,100)
                            .padding(16)
                            .background(Color(red: 0.91, green: 1, blue: 0.33))
                            .cornerRadius(16)
                    }
                    
                }
                
                HStack{
                    Text("Already a subscriber?")
                        .foregroundStyle(.white).bold()
                        .font(.callout)
                    
                    NavigationLink {
                        SignIn(didOnboard: $didOnboard)
                    } label: {
                        Text("Log In")
                            .font(.title3).bold()
                            .foregroundStyle(.color1)
                    }
                }
                
                HStack{
                    Button {
                        guest()
                    } label: {
                        Text("Continue as Guest?")
                            .foregroundStyle(.white).bold()
                            .font(.callout)
                    }
                }
            }
            .foregroundStyle(.white).bold()
           
            .background(
            
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 375, height: 426)
                  .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.5, green: 0.5, blue: 0.5), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.5, green: 0.5, blue: 0.5).opacity(0), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )

                  )
                  .cornerRadius(24)
                  .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
            )
            .padding(.top,395)
            
            
        }
        .navigationBarBackButtonHidden()
    }
    
    func guest() {
        didOnboard = true
        AuthService.shared.loggedIn = true
    }
}

#Preview {
    SecondOnboard(didOnboard: .constant(false))
}
