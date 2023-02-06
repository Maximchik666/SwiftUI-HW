//
//  ContentView.swift
//  SwiftUITeachingProject
//
//  Created by Maksim Kruglov on 06.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLogin = false
    
    var body: some View {
        TabView(){
            
            if isLogin {
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill.checkmark")
                    }
            } else {
                LoginView(logged: $isLogin)
                    .tabItem {
                        Label("Login", systemImage: "person")
                    }
            }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
            NewsView()
                .tabItem {
                    Label("News", systemImage: "globe")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
