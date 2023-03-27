//
//  ContentView.swift
//  tinderDribbble
//
//  Created by Yael Javier Zamora Moreno on 21/03/23.
//
//https://dribbble.com/shots/20852233-Dating-App-Concept-iOS-Android-uiux

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}

struct ContentView: View {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    var body: some View {
        TabView{
            HomeView().tabItem{
                Label("", systemImage: "house")
            }
            LocateView().tabItem{
                Label("", systemImage: "safari")
            }
            TargetView().tabItem{
                Label("", systemImage: "app")
            }
            ChatView().tabItem{
                Label("", systemImage: "bubble.left.and.bubble.right")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
