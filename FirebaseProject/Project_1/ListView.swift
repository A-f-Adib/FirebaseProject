//
//  ListView.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/6/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                
                ScrollView {
                    
                    Text("User 1")
                        .padding()
                    Text("User 2")
                        .padding()
                    Text("User 3")
                        .padding()
                    Text("User 4")
                        .padding()
                    Text("User 5")
                        .padding()
                    
                        
                }
                .font(.system(size: 20, weight: .bold, design: .monospaced))
            }
            .foregroundColor(.blue)
            .font(.title2)
            .navigationTitle("User Information")
            
            .padding()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
