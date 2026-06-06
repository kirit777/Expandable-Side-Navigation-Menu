//
//  HomeView.swift
//  swiftuiDemo
//
//  Created by Kirit on 06/06/26.
//


import SwiftUI

struct HomeView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.white
                
                Text("Home Screen")
                    .font(.largeTitle)
            }
            
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button {
                        
                        withAnimation(.spring()) {
                            showMenu.toggle()
                        }
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}



struct ArtistView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.white
                
                Text("Artist Screen")
                    .font(.largeTitle)
            }
            
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button {
                        
                        withAnimation(.spring()) {
                            showMenu.toggle()
                        }
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}

struct PopularView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.white
                
                Text("Popular Screen")
                    .font(.largeTitle)
            }
            
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button {
                        
                        withAnimation(.spring()) {
                            showMenu.toggle()
                        }
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}


struct MyMusixView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.white
                
                Text("My Musix Screen")
                    .font(.largeTitle)
            }
            
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button {
                        
                        withAnimation(.spring()) {
                            showMenu.toggle()
                        }
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}


