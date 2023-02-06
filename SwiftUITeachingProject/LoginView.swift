//
//  LoginView.swift
//  SwiftUITeachingProject
//
//  Created by Maksim Kruglov on 06.02.2023.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var logged: Bool
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack {
            Image("vk")
                .resizable()
                .frame(width: 160, height: 160)
                .cornerRadius(80)
                .shadow(radius: 12)
                .padding(.top, 20)
            
            VStack(spacing: -0.5) {
                TextField("Lodin", text: $login)
                    .modifier(TextFielder())
                SecureField("Password", text: $password)
                    .modifier(TextFielder())
            }
            .cornerRadius(12)
            .padding(.top, 60)
            .padding()
            
            Button(action: {
                self.logged = true
            }) {
                Text("Log In")
                    .frame(height: 60)
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(Color(.systemBlue))
            .cornerRadius(12)
            .padding(16)
        
            Spacer()
        }
    }
}
