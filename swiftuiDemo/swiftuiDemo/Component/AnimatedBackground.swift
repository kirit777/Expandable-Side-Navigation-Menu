//
//  AnimatedBackground.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct AnimatedBackground: View {
    
    @State private var move = false
    
    var body: some View {
        
        ZStack {
            
            Group {
                
                Text("♪")
                    .font(.system(size: 50))
                    .position(x: 50, y: 100)
                
                Text("♫")
                    .font(.system(size: 30))
                    .position(x: 130, y: 700)
                
                Text("♪")
                    .font(.system(size: 25))
                    .position(x: 20, y: 780)
                
                Text("♫")
                    .font(.system(size: 20))
                    .position(x: 200, y: 600)
            }
            .foregroundColor(
                AppColors.accent.opacity(0.8)
            )
            .offset(y: move ? -20 : 20)
            .animation(
                .easeInOut(duration: 3)
                .repeatForever(),
                value: move
            )
        }
        .onAppear {
            move = true
        }
    }
}