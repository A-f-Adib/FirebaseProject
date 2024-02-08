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
                        
                }
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
