//
//  ListView.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/6/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var dataManager : DataManager
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ScrollView {
                    
                    Text("User 1")
                    
                        
                }
            }
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
