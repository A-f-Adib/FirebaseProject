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
        VStack{
            TextField("Cars", text: $newCar)
            
            Button {
                
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

struct NewCarView_Previews: PreviewProvider {
    static var previews: some View {
        NewCarView()
    }
}
