//
//  TargetView.swift
//  tinderDribbble
//
//  Created by Yael Javier Zamora Moreno on 21/03/23.
//

import SwiftUI

struct TargetView: View {
    @State private var mostrar1 = true
    @State private var mostrar2 = false
    
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: "https://picsum.photos/id/91/900")).ignoresSafeArea()
            VStack {
                HStack{
                    Spacer()
                    Image(systemName: "chevron.backward").foregroundColor(.white)
                    Spacer()
                    Text("For You").underline(mostrar1)
                        .foregroundColor(.white)
                        .bold()
                        .onTapGesture {
                            mostrar1 = true
                            mostrar2 = false
                        }
                    Spacer()
                    Text("Nearby").underline(mostrar2)
                        .foregroundColor(.white)
                        .bold()
                        .onTapGesture {
                            mostrar2 = true
                            mostrar1 = false
                        }
                    Spacer()
                    Image(systemName: "ellipsis").foregroundColor(.white)
                        .rotationEffect(.degrees(90))
                    Spacer()
                }.padding([.top], 60)
                    .padding([.horizontal], 220)
                Spacer()
                Text("Betty Green, 22").foregroundColor(.white)
                    .font(.custom("", size: 30))
                    .bold()
                    .position(x: 360, y: 500)
                Text("Brooklyn, NY").foregroundColor(.white)
            }.padding()
        }
    }
}

struct TargetView_Previews: PreviewProvider {
    static var previews: some View {
        TargetView()
    }
}
