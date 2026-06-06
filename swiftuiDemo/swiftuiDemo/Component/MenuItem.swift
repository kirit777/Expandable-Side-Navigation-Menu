//
//  MenuItem.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
}

let menuItems: [MenuItem] = [
    MenuItem(title: "Home", icon: "house.fill"),
    MenuItem(title: "Artist", icon: "person.fill"),
    MenuItem(title: "Popular", icon: "chart.bar.fill"),
    MenuItem(title: "My Musix", icon: "folder")
]