//
//  CreateAccount.swift
//  ParkingSpace
//
//  Created by Aljwhra Alnasser on 15/12/2023.
//

import SwiftUI

struct CreateAccount: View {
    
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
                    
                  
                    
                    Text("Create Account")
                        .font(.title)
                    
                                           
                    
                    
               
                    Text("Looks like you don’t have an account. Let’s \ncreate a new account for you.")
               
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
                        
                    
                    
                    
                    
                    Button(action: { signUp() }, label: {
                        Text("Sign Up")
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
        .navigationBarBackButtonHidden()
        .disabled(networking)
    }
    
    @MainActor
   func signUp() {
        Task {
            do {
                networking = true
                let (uid, token) = try await SupabaseHelper.signUp(email: email, password: password)
                
                // create User file in Supabase
                let user = User(name: "", uid: uid, dob: Date(), email: email, mobile: "")
                
                try await SupabaseHelper.create(object: user, tableName: "User")
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

//    func guest() {
//        didOnboard = true
//        AuthService.shared.loggedIn = true
//    }
    
    
}

#Preview {
    CreateAccount(didOnboard: .constant(false))
}
