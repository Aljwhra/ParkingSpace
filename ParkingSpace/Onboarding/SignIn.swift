//
//  SignIn.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI

struct SignIn: View {
    
    @Binding var didOnboard: Bool
    
    @State private var email = ""
    @State private var password = ""
    
    @State var networking: Bool = false
    
    
    
    
    var body: some View {
        ZStack{
            Image("b1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
            VStack{
                
                VStack(spacing: 15){
                
                    
                    Text("Sign in")
                        .font(.title)
               
                    Text("Enter your email and password to get\n into the app!")
                      .font(.callout)
                      .multilineTextAlignment(.center)
                     
                    
                       
                        
                        VStack(alignment: .leading, spacing:15){
                            Text("Email")
                                .font(.title3)
                            TextField("Email", text: $email)
                                .padding()
                               
                                .cornerRadius(30)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.white, lineWidth: 1.5)
                                )
                                .frame(width: 300)
                            
                            Text("Password")
                                .font(.title3)
                            SecureField("Password", text: $password)
                               
                                .padding()
                        
                                .cornerRadius(30)
                                .background(RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.white, lineWidth: 1.5)
                                )
                                .frame(width: 300)
                            
                            
                        }
                        
                    
                    
                    
                    
                    Button(action: {
                        login()
                    }, label: {
                        Text("Sign in")
                            .font(.title3).bold()
                            .foregroundStyle(.black)
                            .padding(.horizontal ,100)
                    })
                    .padding(16)
                    .background(Color(red: 0.91, green: 1, blue: 0.33))
                    .cornerRadius(16)
                    
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
            .padding(.top,300)
        }
        .disabled(networking)
    }
    
    @MainActor
    func login() {
        Task {
            do {
                networking = true
                let (uid, token) = try await SupabaseHelper.signIn(email: email, password: password)
                
                let result: [User] = try await SupabaseHelper.read(tableName: "User", column: "uid", value: uid)
                
                didOnboard = true
                AuthService.shared.token = token
                AuthService.shared.user = result.first
                AuthService.shared.loggedIn = true
                networking = false
            } catch {
                networking = false
                print(error)
            }
            
        }
    }
}

#Preview {
    SignIn(didOnboard: .constant(false))
}
