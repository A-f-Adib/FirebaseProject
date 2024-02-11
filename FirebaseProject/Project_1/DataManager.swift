//
//  DataManager.swift
//  FirebaseProject
//
//  Created by A.f. Adib on 2/11/24.
//

import Foundation
import Firebase

class DataManager : ObservableObject {
    @Published var cars: [Car] = []
    
    func fetchCars() {
        cars.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Cars")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
        }
    }
}
