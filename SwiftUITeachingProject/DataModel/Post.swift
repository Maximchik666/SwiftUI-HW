//
//  Post.swift
//  SwiftUITeachingProject
//
//  Created by Maksim Kruglov on 06.02.2023.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let description: String
    let image: Image
}
