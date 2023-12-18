//
//  ProfileView.swift
//  Parking
//
//  Created by ٍٍRaneem A on 02/06/1445 AH.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var vm = ProfileViewViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    @ObservedObject var auth = AuthService.shared
    
    @State var showSignoutConfirmationSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                
                if let user = auth.user {
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                            .foregroundStyle(.black)
                        Text(verbatim: user.email)
                            .font(.caption2)
                            .foregroundStyle(.black)
                    }
                } else {
                    VStack(alignment: .leading) {
                        Text("Guest")
                            .font(.headline)
                            .foregroundStyle(.black)
                    }
                }
                
                
                Spacer()
                Button(action: {}) {
                    Image("edit1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                }
                
            }
            .padding()
            .background {
                Color.color1
                    .cornerRadius(22)
                    .ignoresSafeArea()
            }
            List {
                if auth.user != nil {
                    listRow(title: "Edit Profile", imageName: "EditProfilew") {
                        EditProfileView()
                        
                    }
                    
                    listRow(title: "Payment System", imageName: "Image") {
                        
                        AddCardTopayView()
                    }
                }
                
                listRow(title: "Add Parking Request", imageName: "Parking") {
                    Text("")
                    //                        DetailsBookingUserView()
                }
                //                if auth.user != nil {
                //
                //                }
                
                //                HStack(spacing: 16) {
                //                    Image(colorScheme == .dark ? "theme_dark" : "theme_light")
                //                        .resizable()
                //                        .aspectRatio(contentMode: .fit)
                //                        .frame(width: 26, height: 26)
                //                    Toggle("Dark Mode", isOn: $auth.isDarkMode)
                //                }
                //                .padding(.vertical, 12)
                
                listRow(title: "Security", imageName: "Security") {
                    
                    PrivacyPolicyView()
                }
                listRow(title: "Terms & Conditions", imageName: "Terms") {
                    
                    TermsConditionsView()
                }
                
                Button {
                    signout()
                } label: {
                    HStack(spacing: 16) {
                        Image("rectangle.portrait.and.arrow.left")
                            .resizable()
                            .fontWeight(.thin)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                        Text("Logout")
                            .foregroundStyle(.red)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .flipsForRightToLeftLayoutDirection(true)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 12)
                
                //                    Button {
                //                        if let url = URL(string: UIApplication.openSettingsURLString) {
                //                            UIApplication.shared.open(url)
                //                        }
                //                    } label: {
                //                        HStack(spacing: 16) {
                //                            Image(systemName: "globe")
                //                                .resizable()
                //                                .fontWeight(.thin)
                //                                .aspectRatio(contentMode: .fit)
                //                                .frame(width: 26, height: 26)
                //                            Text("Change Language")
                //                            Spacer()
                //                            Image(systemName: "chevron.right")
                //                                .flipsForRightToLeftLayoutDirection(true)
                //                                .font(.footnote)
                //                                .foregroundColor(.gray)
                //                        }
                //                    }
                //                    .padding(.vertical, 12)
                
                
                
            }
            .listStyle(.plain)
            
//            Button(action: { vm.logout() }) {
//                Text("Logout")
//                    .frame(maxWidth: .infinity)
//                    .padding(.vertical)
//                    .background(Color.color1)
//                    .cornerRadius(12)
//                    .foregroundColor(.black)
//                
//            }
//            .padding(.horizontal)
        }
        .navigationTitle("My Profile")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
            
        }
//        .sheet(isPresented: $showSignoutConfirmationSheet) {
//            VStack {
//                Button("Yes") {
//                    signout()
//                }
//            }
//            .presentationDetents([.medium])
//            .presentationDetents([.fraction(25)])
//        }
    }
    
    func listRow(title: LocalizedStringKey, imageName: String, destination: () -> some View) -> some View {
        NavigationLink {
            destination()
        } label: {
            HStack(spacing: 16) {
                //                Image(colorScheme == .dark ? "\(imageName)_dark" : "\(imageName)_light")
                Image("\(imageName)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26, height: 26)
                Text(title)
                Spacer()
                //Image(systemName: "chevron.right")
            }
            .padding(.vertical, 12)
        }
        
        
        
    }
    
    func signout() {
        auth.loggedIn = false
        auth.user = nil
        auth.token = ""
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
    
}
