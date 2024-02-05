//
//  ContentView.swift
//  Fproject2
//
//  Created by A.f. Adib on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.red
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.white, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1400, height: 500)
                .rotationEffect(.degrees(50))
                .offset(x: -350)
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
