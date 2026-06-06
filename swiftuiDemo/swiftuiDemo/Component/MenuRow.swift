//
//  MenuRow.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct MenuRow: View {
    
    let item: MenuItem
    let selected: Bool
    
    var body: some View {
        
        HStack(spacing: 16) {
            
            Image(systemName: item.icon)
                .font(.system(size: 18))
                .frame(width: 22)
            
            Text(item.title)
                .font(.system(size: 22))
                .fontWeight(selected ? .semibold : .regular)
        }
        .foregroundColor(
            selected ? .white : .white.opacity(0.65)
        )
    }
}