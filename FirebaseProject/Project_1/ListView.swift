//
//  ListView.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/6/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var dataManager : DataManager
    @State private var showPopUp = false
    
    var body: some View {
        
        NavigationView {
            
            List(dataManager.cars, id: \.id) {  car in
                    
                Text(car.brand)
                
            }
            .navigationTitle("Cars")
            .toolbar(content: {
                Button {
                    showPopUp.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            })
            .sheet(isPresented: $showPopUp) {
                NewCarView()
            }
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
