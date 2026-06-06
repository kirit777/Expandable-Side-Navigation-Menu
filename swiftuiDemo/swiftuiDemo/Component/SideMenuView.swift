//
//  SideMenuView.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct SideMenuView: View {
    
    @Binding var selectedIndex: Int
        @Binding var showMenu: Bool
    
    var body: some View {
        
        ZStack {
            
            AppColors.background
            
            AnimatedBackground()
            
            VStack(alignment: .leading) {
                
                Spacer()
                    .frame(height: 40)
                
                ProfileHeader()
                
                Spacer()
                    .frame(height: 50)
                
                ForEach(menuItems.indices, id: \.self) { index in
                    
                    Button {
                        selectedIndex = index
                        withAnimation(.spring()) {
                            showMenu = false
                        }
                        
                    } label: {
                        
                        MenuRow(
                            item: menuItems[index],
                            selected: selectedIndex == index
                        )
                    }
                    
                    .padding(.vertical, 12)
                }
                
                Spacer()
            }
            .padding(.horizontal, 28)
        }
        .frame(width: 280)
    }
}
