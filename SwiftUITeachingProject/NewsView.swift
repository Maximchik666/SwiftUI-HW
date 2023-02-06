//
//  InfoView.swift
//  SwiftUITeachingProject
//
//  Created by Maksim Kruglov on 06.02.2023.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        NavigationView {
            List(data) { post in

                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                InfoRow(post: post)
                }
            }
            .navigationTitle("News")
            .listStyle(.plain)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
