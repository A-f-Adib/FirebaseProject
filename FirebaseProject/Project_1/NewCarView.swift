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
                Spacer()
                
                Text("Enter the name of the cars")
                    .foregroundColor(.black)
                    .font(.title.bold())
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
                Spacer()
                
                
                
                
                TextField("Enter", text: $newCar)
                    .font(.title.bold())
                
                Button {
                    
                    dataManager.addCar(carBrand: newCar)
                    
                } label: {
                    Text("Save")
                        .padding()
                        .font(.title2.bold())
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(.pink.opacity(0.8))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(.top)
                
                Spacer()
                Spacer()
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
