//
//  ContentView.swift
//  Fproject2
//
//  Created by A.f. Adib on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = "Email"
    @State private var pw = "pw"
    
    var body: some View {
        ZStack{
            Color.red
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.white, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1400, height: 500)
                .rotationEffect(.degrees(45))
                .offset(x: -350)
            
            ZStack {
                Circle()
                    .frame(height:210)
                    .foregroundColor(.white)
                Circle()
                    .frame(height: 200)
                .foregroundColor(.yellow)
                
               
                
                VStack{
                    HStack {
                        Text("FireBase")
                            .fontWeight(.bold)
                            .font(.title)
                        .foregroundColor(.blue)
                        Image(systemName: "flame.fill")
                            .font(.title)
                            
                            .foregroundColor(.red)
                    }
                   
                    Circle()
                        .frame(height:210)
                        .foregroundColor(.white)
                    Circle()
                        .frame(height: 200)
                    .foregroundColor(.yellow)
                    
                   
                }
            }
            
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
