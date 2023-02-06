//
//  SettingsView.swift
//  SwiftUITeachingProject
//
//  Created by Maksim Kruglov on 06.02.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var notificationOn = true
    @State private var darkON = false
    
    @State private var sliderValue = 10.0
    @State private var sliderValueIsChanging = false
    
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $notificationOn) {
                    Text("Push notifications")
                }
                Toggle(isOn: $darkON) {
                    Text("Dark Theme")
                }
            }
            
            Slider(value: $sliderValue, in: 0...100) { changed in
                sliderValueIsChanging = changed
            }
            
            Text("Progress Value: \(Int(sliderValue))")
                .foregroundColor(.secondary)
            
            Section {
                VStack(alignment: .leading) {
                    Text("\(sliderValueIsChanging ? "I like you move it" : "I See You")")
                        .font(.title2)
                        .foregroundColor(sliderValueIsChanging ? .red : .blue)
                    Text("Font: caption Style")
                        .font(.caption)
                        .padding(.top)
                }
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
