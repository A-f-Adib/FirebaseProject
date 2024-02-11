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
            
            List(dataManager.cars, id: \.id) {  car in
                    
                Text(car.brand)
                
            }
            .navigationTitle("Cars")
            .toolbar(content: {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            })
            
            .padding()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(DataManager())
    }
}
