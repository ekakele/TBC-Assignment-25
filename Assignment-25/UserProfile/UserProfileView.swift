//
//  UserProfileView.swift
//  Assignment-25
//
//  Created by Eka Kelenjeridze on 06.12.23.
//

import SwiftUI

struct UserProfileView: View {
    @State var nameFieldText: String = ""
    @State var emailTextField: String = ""
    @State var passwordTextField: String = ""
    @State var birthDateTextField: String = ""
    @State var countryTextField: String = ""
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .padding(.leading, -110)
                    .bold()
                
                Text("Edit Profile")
                    .font(.title2)
                    .bold()
            }
            
            Image("profilePicture")
                .resizable()
                .offset(y: 35)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 166, height: 180)
                .padding(2)
                .overlay(
                    Circle()
                        .stroke(
                            Color(red: 0.14, green: 0.15, blue: 0.38),
                            lineWidth: 1
                        )
                )
                .overlay(
                    Image("cameraIcon")
                        .frame(width: 32, height: 32)
                        .offset(x: 60, y: 60)
                )
            
            Spacer()
                .frame(height: 24)
            
            VStack(spacing: 18) {
                VStack(alignment: .leading, spacing: 11) {
                    Text("Name")
                        .font(.headline)
                        .bold()
                    
                    ZStack(alignment: .leading) {
                        TextField("", text: $nameFieldText)
                            .padding(EdgeInsets(top: 16, leading: 15, bottom: 16, trailing: 15))
                            .frame(width: 342, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                            )
                        
                        if nameFieldText.isEmpty {
                            Text("test")
                                .font(.callout)
                                .foregroundColor(Color(red: 0.33, green: 0.3, blue: 0.3))
                                .padding(.leading, 15)
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Email")
                        .font(.headline)
                        .bold()
                    
                    ZStack(alignment: .leading) {
                        TextField("", text: $emailTextField)
                            .padding(EdgeInsets(top: 16, leading: 15, bottom: 16, trailing: 15))
                            .frame(width: 342, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                            )
                        
                        if emailTextField.isEmpty {
                            Text(verbatim: "test@gmail.com")
                                .textContentType(.none)
                                .font(.callout)
                                .foregroundColor(Color(red: 0.33, green: 0.3, blue: 0.3))
                                .padding(.leading, 15)
                            
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Password")
                        .font(.headline)
                        .bold()
                    
                    ZStack(alignment: .leading) {
                        SecureField("", text: $passwordTextField)
                            .padding(EdgeInsets(top: 16, leading: 15, bottom: 16, trailing: 15))
                            .frame(width: 342, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                            )
                        
                        if passwordTextField.isEmpty {
                            Text("************")
                                .font(.callout)
                                .foregroundColor(Color(red: 0.33, green: 0.3, blue: 0.3))
                                .padding(.leading, 15)
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Date of Birth")
                        .font(.headline)
                        .bold()
                    
                    ZStack(alignment: .leading) {
                        TextField("", text: $birthDateTextField)
                            .padding(EdgeInsets(top: 16, leading: 15, bottom: 16, trailing: 15))
                            .frame(width: 342, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                            )
                        
                        if birthDateTextField.isEmpty {
                            Text("31/02/2000")
                                .font(.callout)
                                .foregroundColor(Color(red: 0.33, green: 0.3, blue: 0.3))
                                .padding(.leading, 15)
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Country/Region")
                        .font(.headline)
                        .bold()
                    
                    ZStack(alignment: .leading) {
                        TextField("", text: $countryTextField)
                            .padding(EdgeInsets(top: 16, leading: 15, bottom: 16, trailing: 15))
                            .frame(width: 342, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                            )
                        
                        if countryTextField.isEmpty {
                            Text("Georgia")
                                .font(.callout)
                                .foregroundColor(Color(red: 0.33, green: 0.3, blue: 0.3))
                                .padding(.leading, 15)
                        }
                    }
                }
            }
            
            Spacer()
                .frame(height: 29)
            
            Button(action: {
                print("button pressed")
            }, label: {
                Text("Save Changes")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 43)
                    .padding(.vertical, 13)
                    .background(
                        Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1.0)
                            .cornerRadius(6)
                    )
            })
        }
    }
}

#Preview {
    UserProfileView()
}
