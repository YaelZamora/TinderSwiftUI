//
//  HomeView.swift
//  tinderDribbble
//
//  Created by Yael Javier Zamora Moreno on 21/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        let data = (1...100).map { "Item \($0)" }

        let columns = [
            GridItem(.flexible(minimum: 160, maximum: 180)),
            GridItem(.flexible(minimum: 160, maximum: 180))
        ]
        
        let nombres = [
            "Anna",
            "Debbie",
            "Nicole",
            "Anna",
            "Ashley",
            "Rebecca",
            "Mia",
            "Rose",
            "Mary",
            "Ariana",
            "Carla",
            "Hilda",
            "Sofia",
            "Ximena",
            "Alejandra",
            "Michelle",
            "Berenice",
            "Lucy",
            "Guadalupe",
            "Yunhuen",
        ]
        
        ZStack {
            
            LinearGradient(
                colors: [
                    
                    Color(hex: 0xffd0fb95),
                    
                    Color(hex: 0xff0a0803),
                    
                ],
                
                startPoint: .leading, endPoint: .trailing
                
            ).ignoresSafeArea()
            
            Color(hex: 0xff0a0803, alpha: 0.7).ignoresSafeArea()
            
            VStack(alignment: .leading){
                
                HStack(spacing: 20){
                    
                    Image(systemName: "slider.horizontal.3").foregroundColor(.white)
                        .font(.custom("", size: 25))
                    
                    Spacer()
                    
                    Text("My matches").foregroundColor(.white)
                        .font(.custom("Gilroy-Light", size: 20))
                    
                    Spacer()
                    
                    Image(systemName: "person.circle").foregroundColor(.white)
                        .font(.custom("", size: 25))
                    
                }.padding([.top], 30)
                    .padding([.leading], 60)
                    .padding([.trailing], 60)
                
                Text("Likes 28").font(.custom("Gilroy-Light", size: 20))
                    .foregroundColor(.white)
                    .padding([.leading], 60)
                
                ScrollView(.horizontal){
                    HStack(spacing: 20){
                        ForEach(0..<20){index in
                            VStack{
                                AsyncImage(url: URL(string: "https://picsum.photos/300"))
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(25)
                                Text(nombres[index]).foregroundColor(.white)
                            }
                        }
                    }
                }.frame(width: 400, height: 80)
                    .padding([.leading], 60)
                
                Text("Matches 15").font(.custom("Gilroy-Light", size: 20))
                    .foregroundColor(.white)
                    .padding([.leading], 60)
                
                ZStack{
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(data, id: \.self) { item in
                                ZStack{
                                    AsyncImage(url: URL(string: "https://picsum.photos/300"))
                                }.frame(width: 150, height: 200)
                                    .background(.red)
                                    .cornerRadius(20)
                            }
                        }
                    }
                }.frame(width: 450, height: 480).padding()
                
            }.padding()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
