//
//  NewCarView.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/12/24.
//

import SwiftUI

struct NewCarView: View {
    
    @EnvironmentObject var dataManager : DataManager
    @State private var newCar = ""
    
    var body: some View {
        ZStack {
            Color.pink.opacity(0.4).ignoresSafeArea()
        
            VStack{
                TextField("Enter Cars", text: $newCar)
                    .font(.title)
                
                Button {
                    dataManager.addCar(carBrand: newCar)
                } label: {
                    Text("Save")
                        .frame(width: 200, height: 40)
                        .background(.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .padding()
            
        }
    }
}

struct NewCarView_Previews: PreviewProvider {
    static var previews: some View {
        NewCarView()
    }
}
