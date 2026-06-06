//
//  ProfileHeader.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct ProfileHeader: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            ZStack {
                
                Circle()
                    .fill(
                        RadialGradient(
                            colors: [
                                Color.purple.opacity(0.8),
                                Color.purple.opacity(0.2)
                            ],
                            center: .center,
                            startRadius: 10,
                            endRadius: 70
                        )
                    )
                    .frame(width: 120, height: 120)
                
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
            }
            
            Text("Hi!")
                .foregroundColor(.white.opacity(0.8))
                .font(.title3)
            
            Text("Nirza\nMiramanu")
                .font(.system(size: 42))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}