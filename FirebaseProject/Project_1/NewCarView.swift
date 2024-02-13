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
                        .padding()
                       
                        .frame(width: 200, height: 40)
                        .background(.pink.opacity(0.8))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(.top)
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
