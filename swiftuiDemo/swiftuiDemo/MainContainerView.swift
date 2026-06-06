//
//  MainContainerView.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct MainContainerView: View {
    
    @State private var showMenu = false
    @State private var selectedIndex = 0
    
    @ViewBuilder
    private var currentScreen: some View {

        switch selectedIndex {

        case 0:
            HomeView(showMenu: $showMenu)

        case 1:
            ArtistView(showMenu: $showMenu)

        case 2:
            PopularView(showMenu: $showMenu)

        case 3:
            MyMusixView(showMenu: $showMenu)

        default:
            HomeView(showMenu: $showMenu)
        }
    }
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            AppColors.background
            
            SideMenuView(
                selectedIndex: $selectedIndex,
                showMenu: $showMenu
            )
            
            currentScreen
            .cornerRadius(showMenu ? 40 : 0)
            .scaleEffect(showMenu ? 0.85 : 1)
            .offset(
                x: showMenu ? 260 : 0
            )
            .rotation3DEffect(
                .degrees(showMenu ? -10 : 0),
                axis: (x: 0, y: 1, z: 0)
            )
            .shadow(radius: 20)
        }
        .ignoresSafeArea()
        .animation(
            .spring(
                response: 0.45,
                dampingFraction: 0.8
            ),
            value: showMenu
        )
    }
}


